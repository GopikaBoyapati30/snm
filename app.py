from flask import Flask,flash,request,render_template,redirect,url_for,session,send_file
from otp import genotp 
from cmail import send_mail
from stoken import entoken,dntoken
import mysql.connector
from io import BytesIO
from flask import send_file 
from mysql.connector import (connection) 
import flask_excel as excel 
import re
mydb=mysql.connector.connect(user='root',host='localhost',password='Boyapati@2004',db='snmproject')
app=Flask(__name__)
app.secret_key='code@123'
excel.init_excel(app)
@app.route('/') # base route
def home():
    return render_template('welcome.html')

@app.route('/userregister',methods=['GET','POST'])
def userregister():
    if request.method=='POST':
        print(request.form)
        username=request.form['username']
        useremail=request.form['email']
        password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select count(useremail)from users where useremail=%s',[useremail])
        email_count=cursor.fetchone() #(0,)
        if email_count[0]==0:
            gotp=genotp()
            userdata={'useremail':useremail,'username':username,'password':password,'gotp':gotp}
            subject="OTP for Simple Notes Management Application"
            body=f"This is the OTP for login : {gotp}"
            send_mail(to=useremail,body=body,subject=subject)
            flash(f"OTP is sent to the given {useremail} email, Plz check")
            return redirect(url_for('otpverify',endata=entoken(data=userdata))) #encrypting the nrl data
        elif email_count[0]==1:
            flash(f'{useremail}already existed pls login')
            return redirect(url_for('userregister'))
        else:
            flash('something went wrong')
    return render_template('register.html')
@app.route('/otpverify/<endata>',methods=["GET","POST"])
def otpverify(endata):
    if request.method=="POST":

        user_otp=request.form['otp']
        dndata=dntoken(data=endata)  #decrypting the encrypted data
        if dndata['gotp']==user_otp: 
            cursor=mydb.cursor()
            cursor.execute('insert into users(username,useremail,password) values(%s,%s,%s)',[dndata['username'],dndata['useremail'],dndata['password']])
            mydb.commit()
            cursor.close()
            flash(f'details registerd sucessfully')
            return 'success'
        else:
            flash('OTP was incorrect')
    return render_template('otp.html')
@app.route('/userlogin',methods=['GET','POST'])
def userlogin():
    if request.method=='POST':
        login_useremail=request.form['email']
        login_password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select count(*) from users where useremail=%s',[login_useremail])
        email_count=cursor.fetchone()
        if email_count[0]==1:
            cursor.execute('select password from users where useremail=%s',[login_useremail])
            stored_password=cursor.fetchone()
            if stored_password[0]==login_password:
                session['user']=login_useremail
                return redirect(url_for('dashboard'))
            else:
                flash('password was incorrect')
                return redirect(url_for('userlogin'))
        elif email_count[0]==0:
            flash(f'{login_useremail} not found')
            return redirect(url_for('userlogin'))
    return render_template('userlogin.html')
@app.route('/dashboard')
def dashboard():
    if session.get('user'):
        return render_template('dashboard.html')
    else:
        flash('pls login first')
        return redirect(url_for('userlogin'))
@app.route('/addnotes',methods=['GET','POST'])
def addnotes():
    if session.get('user'):
        if request.method=='POST':
            title=request.form['title']
            description=request.form['content']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            user_id=cursor.fetchone()
            if user_id:
                cursor.execute('insert into notes(title,description,added_by) values(%s,%s,%s)',[title,description,user_id[0]])
                mydb.commit()
                flash('notes added sucessfully!!')
                return render_template('dashboard.html')
            else:
                flash('user id not found')
                return redirect(url_for('addnotes'))
        return render_template('addnote.html')
    else:
        flash('pls login first')
        return redirect(url_for('userlogin'))
@app.route('/viewallnotes')
def viewallnotes():
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select * from notes where added_by=(select userid from users where useremail=%s)',[session.get('user')])
        allnotesdata=cursor.fetchall()
        return render_template('viewallnotes.html',allnotesdata=allnotesdata)
    else:
        flash('pls login to view all the notes')
        return redirect(url_for('dashboard'))

@app.route('/viewnotes/<nid>')
def viewnotes(nid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select*from notes where nid=%s',[nid])
        notes_data=cursor.fetchone()
        if notes_data:
            return render_template('viewnotes.html',notes_data=notes_data)
        else:
            flash('could not fetch notes data')
            return redirect(url_for('viewallnotes'))
    else:
        flash('pls login to view notes')
        return redirect(url_for('userlogin'))
@app.route('/deletenotes/<nid>')
def deletenotes(nid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select userid from users where useremail=%s',[session.get('user')])
        user_id=cursor.fetchone()
        cursor.execute('delete from notes where nid=%s and added_by=%s',[nid,user_id[0]])
        mydb.commit()
        flash('notes deleted successfully')
        return redirect(url_for('viewallnotes'))
    else:
        flash('to delete notes pls login first')
        return redirect(url_for('userlogin'))
@app.route('/updatenotes/<nid>',methods=['GET','POST'])  
def updatenotes(nid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select * from notes where nid=%s',[nid])
        notes_data=cursor.fetchone()
        if request.method=='POST':
            updated_title=request.form['title']
            updated_description=request.form['description']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('update notes set title=%s,description=%s where nid=%s',[updated_title,updated_description,nid])
            mydb.commit()
            flash('notes updated successfully')
            return redirect(url_for('viewnotes',nid=nid))
        return render_template('updatenotes.html',notes_data=notes_data)
    else:
        flash('to update notes pls login first')
        return render_template('userlogin.html')
@app.route('/uploadfiles',methods=['GET','POST'])
def uploadfiles():
    if session.get('user'):
        if request.method=='POST':
            file_data=request.files['file']
            fname=file_data.filename
            f_data=file_data.read()
            print(f_data)
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            user_id=cursor.fetchone()
            cursor.execute('insert into filesdata(fname,fdata,added_by) values(%s,%s,%s)',[fname,f_data,user_id[0]])
            mydb.commit()
            cursor.close()
            flash('file added successfully')
            return redirect(url_for('dashboard'))
        return render_template('uploadfiles.html')
    else:
        flash('pls login to uploadfiles')  
        return redirect(url_for('userlogin'))
@app.route('/viewallfiles')
def viewallfiles():
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select fid,fname,created_at from filesdata where added_by=(select userid from users where useremail=%s)',[session.get('user')])
        all_filesdata=cursor.fetchall()
        print(all_filesdata)
        if all_filesdata:
            return render_template('viewallfile.html',all_filesdata=all_filesdata)
        else:
            flash('could not fetch file data')
            return redirect(url_for('dashboard'))
    else:
        flash('pls login to view all the files')
        return redirect(url_for('dashboard'))

@app.route('/viewfile/<fid>')
def viewfile(fid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select fid, fname, fdata from filesdata where fid=%s and added_by=(select userid from users where useremail=%s)',
        [fid, session.get('user')])
        filesdata=cursor.fetchone()
        print(type(filesdata))
        bytes_array=BytesIO(filesdata[2])
        print(type(bytes_array))
        return send_file(bytes_array,download_name=filesdata[1],as_attachment=False)
    else:
        flash('pls login to view file')
        return redirect(url_for('userlogin'))

@app.route('/downloadfile/<fid>')
def downloadfile(fid):
    if session.get('user'):
        cursor = mydb.cursor(buffered=True)
        cursor.execute('select fid, fname, fdata from filesdata where fid=%s and added_by=(select userid from users where useremail=%s)',[fid, session.get('user')]
        )
        filesdata = cursor.fetchone()
        if filesdata:
            bytes_array = BytesIO(filesdata[2])
            return send_file(
                bytes_array,
                download_name=filesdata[1],  
                as_attachment=True           
            )
        else:
            flash('File not found or access denied')
            return redirect(url_for('viewallfiles'))
    else:
        flash('Please log in to download files')
        return redirect(url_for('userlogin')) 
@app.route('/deletefile/<fid>')
def deletefile(fid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select userid from users where useremail=%s',[session.get('user')])
        user_id=cursor.fetchone()
        cursor.execute('delete from filesdata where fid=%s and added_by=%s',[fid,user_id[0]])
        mydb.commit()
        flash('file deleted successfully')
        return redirect(url_for('viewallfiles'))
    else:
        flash('to delete file pls login first')
        return redirect(url_for('userlogin'))
@app.route('/getexceldata')
def getexceldata():
    if session.get('user'):
       cursor=mydb.cursor(buffered=True)
       cursor.execute('select userid from users where useremail=%s',[session.get('user')])
       user_id=cursor.fetchone()
       cursor.execute('select * from notes where added_by=%s',[user_id[0]])
       notes_data=cursor.fetchall()
       print(notes_data)
       data=[list(i) for i in notes_data]
       columns_heading=['Notes_id','title','Description','Notes_created_time']
       data.insert(0,columns_heading)
       return excel.make_response_from_array(data,'xlsx',file_name='data')
    else:
       flash('to get excel data pls login first')
       return redirect(url_for('userlogin'))
@app.route('/search',methods=['POST'])
def search():
    if session.get('user'):
        if request.method=='POST':
            searchdata=request.form['sdata']
            strng=['A-Za-z0-9']
            pattern=re.compile(f'^{strng}',re.IGNORECASE)
            if re.match(pattern,searchdata):
                cursor=mydb.cursor(buffered=True)
                cursor.execute('select * from notes where title like %s or description like %s or created_at like %s or nid like %s',[searchdata+'%',searchdata+'%',searchdata+'%',searchdata+'%'])
                search_result=cursor.fetchall()
                cursor.execute('select*from filesdata where fname like %s or created_at like %s',[searchdata+'%',searchdata+'%'])
                search_result2=cursor.fetchall()
                if search_result or search_result2:
                    return render_template('dashboard.html',search_result=search_result,
                    search_result2=search_result2 )    
                else:
                    flash('no search found')
                    return redirect(url_for('dashboard'))
            else:
                flash('pls give us some value in search')
                return redirect(url_for('dashboard'))
    else:
        flash('to search data pls login first')
        return redirect(url_for('userlogin'))
@app.route('/userlogout')
def userlogout():
    if session.get('user'):
        session.pop('user')
        return redirect(url_for('userlogin'))
    else:
        flash('to logout you must login')
        return redirect(url_for('userlogin'))
app.run(debug=True,use_reloader=True)