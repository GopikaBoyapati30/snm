import smtplib
from email.message import EmailMessage
def send_mail(to,subject,body):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)#obj creation for gmail server
    server.login('boyapatigopika2004@gmail.com','xdlh qerq vqad bsfu')#login to gmail
    msg=EmailMessage()#email format obj creation
    msg['FROM']='boyapatigopika2004@gmail.com'
    msg['TO']=to
    msg['Subject']=subject
    msg.set_content(body)
    server.send_message(msg)#mail sending
    server.close()#closing the server obj