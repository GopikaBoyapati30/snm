-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: snmproject
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `fid` int unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `fdata` longblob,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int unsigned DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `filesdata_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
INSERT INTO `filesdata` VALUES (2,'otp.py',_binary 'import random\r\ndef genotp():\r\n    otp=\'\'\r\n    u_c=[chr(i) for i in range(ord(\'A\'),ord(\'z\')+1)]\r\n    l_c=[chr(i) for i in range(ord(\'a\'),ord(\'z\')+1)]\r\n    for i in range(2):\r\n        otp=otp+random.choice(u_c)+str(random.randint(0,9))+random.choice(l_c)\r\n    return otp','2025-09-01 16:00:12',1),(6,'asssignment1.docx',_binary 'PK\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0[Content_Types].xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´”\Ëj\Ã0E\÷…þƒÑ¶\ØJº(¥\ÄÉ¢ehúŠ4ND\õB£¼þ¾\ã81¥$14\É\Æ \Ï\Ü{\Ï1ƒ\ÑÚšl	µw%\ë=–“^i7+\Ù\×\ä-d&\á”0\ÞA\É6€l4¼½L60#µÃ’\ÍS\nOœ£œƒXø\0Ž*•V$:\ÆB~‹\ðû^\ïK\ï¸”§Úƒ\r/P‰…I\Ù\ëš~7$²\ì¹i¬³J&B0ZŠDu¾t\êOJ¾K(H¹\íÁ¹xG\rŒL¨+\Çvººš¨dcÓ»°\Ô\ÅW>*®¼\\XR§mpúª\ÒZ}\í¢—€HwnM\ÑV¬\Ðn\Ï”\Ã-\ì\")/\ÒZwB`\ÚÀ\Ë4¾\Ý\ñ	®°s\îDXÁ\ô\ój¿\Ì;A*Êˆ©\Ëc´Ö‰\Ö\04\ßþ\Ù[›S‘\Ô9Ž> ­•ø±\÷{£V\ç4p€˜\ô\éW\×&’\õ\Ù\óA½’¨\Ù|»d‡?\0\0\0ÿÿ\0PK\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0_rels/.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬’Áj\Ã0@\ïƒýƒÑ½Q\ÚÁ£N/c\Ð\Û\Ù[IL\Û\Øj\×þý<\Ø\Ø]\éaG\Ë\ÒÓ“\ÐzsœFu\à”]\ð\Z–U\rŠ½	\Öù^\Ã[û¼x\0•…¼¥1x\Öp\â›\æ\öfý\Ê#I)Êƒ‹YŠ\Ï\Z‘øˆ˜\ÍÀ\å*D\ö\å§i\")\Ï\Ôc$³£žqU\×\÷˜~3 ™1\Õ\ÖjH[{ª=E¾†º\Î~\nf?±—3-\ÂÞ²]\ÄTê“¸2j)\õ,\Zl0/%œ‘b¬\n\Z\ð¼\Ñ\êz£¿§Å‰…,	¡	‰/û|f\\Zþ\çŠ\æ?6\ï!Y´_\áoœ]A\ó\0\0ÿÿ\0PK\0\0\0\0\0!\0z½q\n\0\0Gœ\0\0\0\0\0word/document.xml\ì]ko«\Ê\Õþ^©ÿúC­“½=w ­sÄµ\ÔKtN\ÛW¯¢|À˜ÄœÁœ\ì\ô\×wf|\Ã\Ø\ñg\ÇNˆ”1°žµf\Ýfþü\ó·q¢=Dygi¿¿€Ž¥a6Œ\Óû~\ç\ßÿ\ò?­(ƒt$Y\Z\õ;OQ\Ñùù\ò\÷¿û\ó\ã\Å0§\ã(-5N\"-.\'a¿3*\Ë\ÉE¯W„£h_\Æq˜gEvW~	³q/»»‹Ã¨\÷˜\å\ÃÈ­Iž…QQ\ðû9Aú9¹\ð›\Zµa<\ò‹A\ÒGA^F\ßV4\à\ÞDh\Ï\ì›„PBü	\Ü$…\÷&\Åz¢U„H#B¼U”h3J[Ž5£„6)\é\Í(\áMJF3J\â4\Þ\ðl¥ü\à]–ƒ’\ï\æ\÷½qN>sÂ“ Œq—Oœ&`2Aœ~m\Ð\"~Õ’\Â\÷¦ \÷\Æ\Ù0J\ðpA%\ëw¦yz1¿þ\ó\òz\Ñ\ô‹\Ù\õ\óŸ\åQ¢v[~;³}+“¢\\\\›«`7»Ü+‰Z/Žc–£x²\Ô\ã¦\ÔøÁÑ‚\È\Ã.\0\Æ\É\â¼\Ç	T\ìjÏ©6wÆ†A•\æ\Ïy7Nf-\ßMn\n\Ë+Tš°~\ÏEK\Æ\\‚W7nM\\¨¨|\ÐFŠ\ÆbAÃ˜\Óè…«\Þ-\èÄŠ\ÝjAg\ÆA\'^u`½1\Ã\é^$^´Cüˆ\Ë+´Ša9\íGnÁ£ž¸6(ƒQP,;ÍŒâ¢\"XP$Š3K²p©\Ï\Íh?\Ð\è’\àÓ¸\Â\Ã\Éý\Ë:\ê_\òl:YQ‹_F\íj¥²…\ó´­y‡¯*¡\âeùuL¸&‡W\÷i–ƒ„·ˆw_\÷@Mr@”\\ÅÜŒ¾\Éz!?\ó»Dl§šP‰K\î²\á“ø\ð\äb\äÁ\ïCÀ€\ÐMÜ‘µÜ„–¢VŸÿ\ñ\Ú\îp\á\'× ®É–U×¹¨\ô!0lº¬t£»`š”›§_Wªd+®sù\ókù”\ðÇ¹x¸œþ-.\ÊkÞ°û<˜Œ:=qB:\ÏÎŒ“‡dqX»\Z.ê ¨\ëU.\È\ç?~––?+(Â˜KÉ¿\âqThÿˆµ_²qŠ\ö¬´\Ø~$,6«å­‹ÿ.î‹ŒE#\îR©\ë\Í\Û\Ð[>m¾»£j\ì\ãEyùy\\FZ q‰\äœke\Æ7c>”£H\Ë#ƒDZv\'w9Üƒ(\× Â„2\Ý0µb\ZŽø‘`vv6-\'S¾ù4‰´¸Ð‚¤\È8\áùE?‹»–³{\Ï`Ú”Ojy¦\ë\èB\Â*\ò‰±E‘AV\Â(\à´mdøB«×„vS>+\Â8` !\Z8…\n+Tv\\.\óz†\æ\Ú3/ŠW\nµrQL‚kIQþu.µ:¡¦\íºP\à¤¶\áÙ¾\ßTK|—»µÄ¼­9&[\äX\Ö5`\Ø>dR\Ö\×:K\ï(À§#‚ˆ\á5V²\ï	¾\í\Ò<\à˜&\\ûŸŸ´ÙŸ\n¬\Ø\ÇÀ7\Ögaý2W\×g{ÀJ<\Ë\ân\Ó\Âú¬!—\Ön\÷\ËoYœž\r$²*°š%&\ë°2\ßt0ÀÓ¡ÒŸ8ÿ\á§O\n\à!Hl\êaTÏŒ™º\Ô^Õ„¾\Z”\Ío\"Pü§t¸Tl:##Ïµ\×!\ÅLw\õ\Ö=«w%z¦¡3J0‚*\Æf\ÌÅ¾wzª\ð™nd\"@ªy\ÓLw˜1üþ\ó`‹‹‡˜=\Ï‡d›\âu!Y£`Î¬\Óx\ôiK\Ôf“\'­˜Da|‡Z”D\";\\hwy6Ö²4\Ò\Ê\é$‰Ä‰Aš\ñh3ŸW<e\Ó\\‹SxŠ˜“_%I\öX¨Xi€ Ô™Y\ë\ñ\Äq)A®°Ý‡ÖŠG\ÜŽT€d\0vÖ<•£,\ížw\ë½\à\è\Ú;É²ß‚“ì«—\ÝsDÏ»a6Œ\îÓ€ƒ\ÙyWt\Â,\ïž\ßÀsrNo\ÏS\ñ\à\0r\r\Ë\Â\ÈTM\ÌE\Þ3¥Í«=LF\ó›\ì\È½\êM_!Å´ÿƒ«8­:@\ØGNÍù¨‰¨~EJ%s¸\îŠ<D€m@ 5\èŸ7\ð\ö<¸Á¢ ¢\ÐoU`$>\ð=f¹5­gyÄ£\Ìú`0Î‚þ’ø™\Ø2L$ž¯\ê†Q›@\Ú\ÆûLg\ñ~k,¶\Zf\ê\Ük\÷kZ–a¹«1\Ëw\×\Ï\Î\Æ@«˜mi45 S\Ï\ðü&i\à7Os0\èQl8µÔ–º\ñz\÷iŽc\r7\ð\'\íÿWÁ{Qrƒq/cx‘pŸLžþÐ(\Ï£lšµA$¢ü\î$˜OÁºJ\Ë\ØB†aC!\r:6µv*‡hJ\Z3\ßV;\Ð9s\Ï;BdUˆ¦c»\íH\æ\Ì\ÛÖ‚p«ý¤uƒ®\ö“\ð¼WÛˆo\óML‰eZ úp]Ÿ1\ôG\Ât\×š†\ëR½>\æ	\öm°2ŠJÎ¼l5\è;˜\éL\è®G|¾®\Ó\Õì¤—À·\à\éZkvaÀu‘°Œ*†y8¨–¥;˜\Ó\'¡®‰›kR\Ýt˜Œ¦w³p™jwdž…¡i	u\ñ\Å\Ðz‡o\â&AQþ¥\Ã(†\×Á}d\çQ\ðU^U^\é7j£\à!\Ò\Ê\ÇLN%’#?ƒ(\É•f¸9B\×\ÝA‹ùŒº\n‰šV(\Þp0\è¦s\Õ\íœw³ük\ç\\\ëÄ¢px\äÛ¹U\à<\õ,\êš5…}0\Ô2ù\0L\Óo:ÁXr7½?©(DjC\É4lŒDG~Cû<}¢=H\õtÔ \çÔ¥„†E9Š\ÆQ¿3Ž\Ó,ÿ«\Ê\ri;$Ð‡½\ñAt\"\è6h9r(Ž¼X\ñ Bmfûo<`ùŽ8\"\æÞŠ\ôÀOQtµ®L\ð=¸\ØCb-\ö°\Ø\ÃJ6‚z\Ø46\æ˜\"bRl)LŽkYUc\Õ,\éª$˜…}6™\Ê\ß&|6ƒ®\ëÕµD.°¬V‡ƒ\ïH\ÒZW]\îªS)\Ç	RMJ¡š #\Ä\ð±\ZL\í}\ó\á-\Ê|0h6µ)m¬úFa]Þškq\÷Bx^\ÜtBYEE$7ï¤·Ñ¹\å\åWY&²”‰š)&´k>!vÄ¨Þ¦»ŽWZ¤¨,\Æ;«\ÊI-€)t¨dQ›\Ú8R.\ßt\åD/nº¡,‡¢\"’›wb\ó^#QÄ¢ø­\Ë5@\÷«,YŽEu\ÚU\Ñ\0®n\Ôü\Ðøº˜¦¶	\Ãdºœ¹V…±VY‘“\õ#*‚3mÝ¬½Ú·µŸ½\Ôy\ÕIu¾J›ª\óýûËM`¨©µ\ÂqT\Âqƒno\à-/¿p¦E\é\ð\ìf]+MdÕ©aP\Û_\ç>Ìƒ\ÕuSž\åþ\ó\ÞW\ËýW\åþ,y(Í˜`6t	l þ²\ó\Ì\ç\Éd;6tœZ\î‡Z¶e\Øúú\Ð\ëa\à;`›r»/D?\Ø\ó#±Ak\é\ÍW”\Ò&<t\ß\ô-\\½Cz¶­¯¿”ù\î­\å±\Æ1\ìS\Ð\×:Wq\ÑùÓš4.Š#j\ì{zúr\Ð\ïˆYþ*\ÓL\å”\Ê\Î^U3\×\é\ÄâŠž€\õ\Úk\Î3\õ°nlÌ—|+ÿþu‡vxk‡\ï\ÏÔˆ\ö™\ÈÀ\æ±\ÄV§ý\Ê›Ž‡\\p,I\Ó\Ç>\ì\ÏÇµ\ñ\íbL‰-9ž\rÅ–\ËJI†\ä2>Õ¤?µ \ÍÀNŸºe\ÎV\æ\ì3–\í\ÚÀ\åA\Íþ£\rP°©‡j\ö;D‡\à\à\ê ºW\Ñ\Ã0\Î\n\èÅ¸~\ðD\è±×†\ë3`¶B¿c¨\è¶qŠÁ\×Qµk\÷$x}\ÃQû¿Ž\ì\Ë\Ëu-»ýIŽ­\Ñ{Æ”\'\Ç?N‡Z$³e\Ãpšiga6M\ËOb9h9MUNŒSq\Äi\÷\ñC”._\ãk™‹\rq$ŠHÅ”B›:­e\Ï_Ñ”¶‰Ÿ\ÃÈ½|aûJNÍª\Î\Ë:¸-\Ö$`ø±z9:\ÉÿOü[\ð<\Ã\Ó\\\Ã\ë\Å\ô\Ç`<ù“v¥%\ÙC´d‰\Ê{µ\Ô\ñ=\×wk\ó‰A†\Í\æŸ\räƒ¿›$¥b4¯A\ÌpHPd`d\å±\ê›/h\Ãr}d¿q\ïH°\ôƒ/Ò¤Ÿu¸w•‚^Q9µ\ÐÂˆ‰Žet\é\ð\Ú\ã\ÅzB©i}\Ä6/ :ÇŠ…ÿdYZŽ¯C¶38=m	SY§\Z;:2¦´\à\ÑZ$\Þ4Fo‚\Í\ö¦C~ŸÉ…%*M\'ž\ía\ÛXŸž¼+^z!¯[¿ÿ0n¥±\\\Æy\áý”™VL’¸\äU\ó@0Kµ\Ñ\Ód¥…&,ú0\æÇƒ\'1±Y¼¶¯´H3Ã®\å\Éu\0Û°\ðH\óµE¸û\ëCJ‹\â˜Z|\Â\Ë4Ž‹\Ï\×r%\Ø\Ï—«ü)}•ˆ`›\"S\å\Õ\Ô6S\r\ä6\ñšÌ²jG/¶‚/VQ³‘ˆS\×1tbªøE-7T¸!\ÂCi\ÎÏºŸ•\âB\à\Ù²ú\ê*\ÌC\ñ\å¢O-\ö\ãÀ>\'¦\Ø\öH-±v\Ú\é^+L\÷ˆBNmÝ“ª<[Ð²YÿŠW+º5˜oV\ëÇ…(gú\\l\ÍTº\Ò<f\ì`\â` ´TÀz¬;žƒÀ¯Ã–\íO¬CCw\ô%4LÓ«¯c½\í‰\÷\Z–ŸW\íx\â6Ru\Ë\Ím5Z|@W|\óY\ãÿQ¾ø–nu¸Te	c\0s\Ôø½„¾Ã‰€üX\ìL\ÏiI\ä©È€pA¸RšbiQˆ(¸S56Àeøµi^¬\êž\åú	\ð½†Ú„\ë\é4\é5‡\õ00®¨7 ûr\ñ¤¶eû~ýu‚‰\ä*2RqÍ©Á0bM\ö\ïº\ÕWŠ cžCm_m­\ôw]\Ø\ïj\Ë+€‡ n9Ô”\ÆÔµ\\k}q\ï\çÃ—\Äi\éÛ€#uOiu¥m\òu\ÜNÀ\è\î5c\àB‹Úµ¬(1©ü\Æ\ØÁ\ôHd\ñJØ¥±_!\öt\ÓV[\Û\ó *®\õ\ö\÷j\ì\î\É\Ù|z\ö\Ë6\"N¢´\ì,{\Ú\òq±iGŒF¼\Å*Á!rM\ñP¡&.¶§#£\ö\Z\Å+š\ÉPc{\Å¦\í“¦¶\á]ùU\ÑU²Ä‡¤þÿGuyû\ò½>ùšŸ|\ëO|Ur\ö†_pC”–s @|¨¥A0\â\è\öw~\Þ\æ=xrJ\Î.\óÛŒÖ“;\'G|Ïµ]£\æ…@Šu\Ú×¶\ö\â\÷$‹3{¬¢ûˆeBS.±\ð]Iükp>‡’m[.i€’ ³¶Eay½„:\\\÷¿Š‡y\ä\rM ‰Œ\ÄEÏŸlrÿ\÷@\\\\f\ñùƒù€_|?*W»ƒ¬,³\ñj?‰\î*GGQÀýCþTr\0\ë\â.\Ë\Ê\Ê\îý´”»`v»0K\óYv\âY=\ÌÂ¿\ä\ñPÐŽ\Ó\è:.C\ÞJ\Ì\äE½\Å#\Ê\ÍA6|’ü’©øþ\ç\åÿ\0\0\0ÿÿ\0PK\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0word/_rels/document.xml.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬“\Íj\Ã0„ï…¾ƒ\Ø{-;mC	‘s)\\[\÷d{ýC\õc¤MZ¿}EJ‡ÓƒŽ3bg¾…\Õz\ó­; \ó½5²$†¦²uoZ\Å\ö\á˜\'ij©¬A#z\Ø\ä\÷w\ë7T’Â\ïúÁ³b¼€ŽhXq\î«µ\ô‰Ð„—\Æ:-)H\×\òAVŸ²E¾H\Ó%w\ÓÈ¯2Ù®\àv\õ#°b\ð?Ù¶iú\n_mµ\×h\èF\÷H6\ó!SºIÀ\ÉIB\ð\Û‹¨4*œ\õ\\}³\Þ\ìu‰.l|!8[sË˜f\ñp”¿f6\Ç\ð“¡±†\nYª	\ÇÙšƒxŠ	\ñ…\åûŸ“œ˜\'~\õ\Û\ò\0\0\0ÿÿ\0PK\0\0\0\0\0!\0{C¼]\Í\0\0\Ï \0\0\0\0\0word/theme/theme1.xml\ìYK‹G¾\ò†¹\Ëz\Í\è±X6\ÒH²c\ï\ÚÆ»v\ð±Wj\Í\ôªgZt·v-Œ!Ø§\\\'\ä\È-‡bˆ!&—ü˜›\Äù©\î‘4\ÓROüZv«~|UýuUuui\æ\â\åû1uŽ1„%·z¡\â:8±1IÂŽ{\ç`Xj¹Ž(#\Ê\ÜqX¸—/}ú\ÉE´##c\ä±ƒ:n$\ål§\\#F\â›\á\æ&Œ\ÇHB—‡\å1G\' 7¦\åZ¥\Ò(Çˆ$®“ \ÔÞœL\È;J¥{i¥|@\á_\"…\ZQ¾¯TcCBc\ÇÓªúP\î#\Úqa1;9À\÷¥\ëP$$LtÜŠþsË—.–\×BT\È\æ\ä†úo)·OkZŽ‡‡kA\Ï\ó½Fw­_¨\Ü\Æ\ršƒÆ ±Ö§h4‚¦\\L\ÍZ\à-±9PÚ´\è\î7û\õª\Ï\é¯oá»¾úx\rJ›\Þ~82\æ@i\Ó\ß\Âû½v¯o\ê× ´\Ù\Ø\Â7+Ý¾\×4\ð\ZQ’L·\Ð¿QV»]C&Œ^µ\ÂÛ¾7lÖ–\ðU\ÎEW*ŸÈ¢X‹\Ñ\ãC\0h\ç\"IG.fx‚F€%‡œ8»$Œ \ðf(a†+µÊ°R‡ÿ\ê\ã\é–\ö(\ÚÁ(\'\ÄÖ\â\ãˆ\'3\Ùq¯V7y\ñüù\é£g§~;}üø\ô\Ñ/Ëµ·å®¢$\ÌË½ú\ñë¿¿ÿ\Âù\ë\×^=ùÆŽyüËŸ¿|ùûÿ¦^\Z´¾}ú\ò\Ù\Ó\ß}\õ\çOO,\ð.G‡yø‰±pn\à\ç6‹aƒ–\ð!;‰ƒ‘¼D7	J’± 22\Ð7ˆ\"®‡M;\Þ\å.lÀ+\ó#ƒ\ð~\Ä\ç’X€×£\Ø\0\î1F{Œ[\÷t]­•·\Â<	\í‹\óyw¡c\Û\ÚÁ†—\ó\Ä=±©\"lÐ¼EÁ\å(\Ä	–ŽšcSŒ-b\÷1\ìºGFœ	6‘\Î=\â\ô±š\ä€\ZÑ”	]%1øea#þ6l³w\×\é1jS\ß\Ç\Ç&\Î¢6•˜\Zf¼‚\æ\ÅV\Æ(¦y\ä.’‘\äþ‚ƒ	ž1e\Î`Œ…°\É\Ü\äƒ\îuH3v·\ï\ÑEl\"¹$Sr1–G\ö\Ù4ˆP<³r&I”\Ç~&¦¢È¹Å¤•3Oˆ\êƒPR\è\î»\î~ýÙ¾i\È jf\ÎmG3\ó<.\èa›\ò.\Û\å\Ä\Z½yh„\ö.\Æ 1\ÆÎ\Ïlx63lž‘¾AV¹Šm¶¹†\ÌXUý¨•Tqcq,F\È\î\ã\ð\Ù[l$žJbÄ‹4ß˜š!3€«.¶\Æ+MTJ¸:´v7El\ì¯P\ë­a¥ú\Â¯nø\ïM\Î\È½ƒ~kH\ìol›D²€9@Pe\Ø\Ò-ˆ\î\ÏD\Ôq\Òbs«\Ü\Ä<´™\ÊEOL’\×V@µÿ\ß\Ô>‰³©z\ìÀ\÷©wŠR\Êf•S„Û¬m\Æ\Ç\ä\ã/múhž\Ü\Âp›X \ç•\Íye\ó¿¯lŠ\Î\óy=s^Ïœ\×3v‘P\Ïd%Œ~´zÜ£µÄ…\Ï~&„\Ò}¹ xW\è\âGÀ\ÙaPw´\ÐúQ\Ó,‚\ær9r¤\Ûg\òs\"£ý\Í`™ª^!KÕ¡pfL@ù¤‡­º\Õ\Ç{lœŽV««§› €d6\å\×jŠ5™Ž6š\Ùc¼µz\Ý\õ\ã\Ö%û6$r‹™$\ê\Í\Õ\àkHè	‹¶…EK©/d¡¿–^\Ë\ÉA\êÁ¸ï¥Œ \Ü ¤\Ç\ÊO©üÊ»g\î\é\"cšÛ®Y¶\×V\\\Ï\Æ\Ó‰\\¸™$raÁ\å±9|Æ¾ng.5\è)Sl\Óh¶>„¯U\Ù\È\r41{\Î	œ¹ºjFh\Öq\'\ð\Ã	š\ñ\ô	•©\r“Ž;’KC¿Kf™q!ûHD)LO¥û‰\ÄÜ¡$†XÏ»&·j­©\öø‘’kW>>\Ëé¯¼“\ñd‚G²`$\ë\Â\\ª\Ä:ûž`\Õas ½OœC:\ç·\ÊoV•\ÇDÈµ5Ç„\ç‚;³\âFºZE\ã­KvDEhy£\ä“y\n\×\í5\Ü>4\Ó\Í]™ý\åfC\å¤\÷¾u_/¤&rI³\àQ·¦=|¸K>\Ç*\Ëû«4uo\æº\ö*\×\Ý\ï!\ä¨e‹\ÔcµlÔ¤v†An¹uh\Ýg}lF­º Vu¥\îm½\Þf‡Gù}¨V\çT\nM~µp¬^L¦™@®²\Ë}\é\Ì9\é¸*~\×j~Pª´üAÉ«{•R\Ë\ï\ÖK]ß¯W~µ\Ò\ï\Õ‚QdWýt\í!üØ§‹\å\Û{=¾\õ?^•\ÚF,.3]—µ°~ƒ_­¿ÁwX\æA£6l\×Û½F©]\ïK^¿\×*µƒF¯\Ôo\Íþ°ø­\ö\ð¡\ëk°×­^c\Ð*5ªAP\ò\ZE¿\Õ.5½Z­\ë5»­\×}¸´5\ì|\õ½2¯\æu\é\0\0\0ÿÿ\0PK\0\0\0\0\0!\0(\ï3F\0\0´\0\0\0\0\0word/settings.xml´Wß\Ú8~?\éþ\Ä\ó±!!ˆ\ÊV\Ër\Ünµ´§²§{vb‡X\ë‘\íÀ\Ò\êþ\÷;1\îªZZ\õ…8\ó\Í|3gÂ»\÷Ïœ\õvDi*Å¼^\rû=\"r‰©\Ø\Îûÿ<®\Ó~O$0bRyÿ@tÿý\õï¿½Û§šjºB§<Ÿ\÷Kcª4t^Ž\ô•¬ˆ\0°Š#¯jp¤ž\êjK^!C3Ê¨9\Ñp˜\ô[\Z9\ï\×J¤-Å€\Ó\\I-cMRY4\'\í\Ã[¨·ømL–2¯9\Æyaƒº¤•\ölüG\Ù\0,=\É\î{›\Øq\æ\õ\ö\á\ð\r\Û\ÝK…o	\Ï\ZTJ\æDk8 \Î|€TtŽ\ãDG\ßW\à»Ý¢£\óp\èV§‘/#ˆ^$9y¾Œc\Úr`y\ÊC\ñe<É‘‡v‰\r“\æ„\0\×QD#‡}X\ó.\r./£\ógX[dP‰\ô±\"Æ‚]\ÆŸ06\Ædþt\ÊI.K\ÚøHx\à\Ý\ê—a½R\Õ\r\ô@3…T\Ó3Ú’\æyz¿R¡ŒA8P\Ú=¨Îž‹\Îþ\Â!Û‡[’g\'·¹m³Hý5´´/R\ò\Þ>­ˆ\Ê\á^C?û0)P\Í\Ì#\Ê6FV ²C\ó$j\á¼D\nå†¨M…r¸r·R%™\×\Ã\ò£4·\Ð\ò\Ü\È\Ö\Â5Ànµiš)X\Äag\rr-1t»}Z+ú\öt[\ç=ŸºüÖ‘„\æ¯(&6{s`dÁo\èr#\ð‡Z\nŒ®MþD\ß€\ëùœ\÷\ã¡\"+‚L\riúE\Î\ÜI¬­\ÖT)©\î†sþe\ÎhQ(2d\r\åC•Ü»<\ß„a\æþ\"¿µ&ÿ‚2\\·\Ñ#”\å\ÓB\Z#ùÝ¡*!\×?w’®Þƒ\Ó\ò…/¬ýâ³”\æ¨:\\N\Ç\ËY\ÒDj\Ñ†q²h\÷pŽ„7\á\äÏ¶`Ï‘\é,™\Ü,_C‹hº\Z½†,\ã\ÉbúªM[p\ÜO\íÿ[ù•½=\ÞX\Ü\"ž)Šzk;\å«‘©§\Ï´*rŠl\êÌƒƒAhŽ[Á‘xÀ¥“§˜\êjI\n·fk¤¶o«¡^•BWúp\ä²‹¨¿”¬«\Ý+T5\îU\Â8n-©0”{¹®³·\Ð\\O Z\àO;\å\òÔ¥gŸ\Z(\×(+<§K\Ä\àþc[˜LmlQ‘5ªª¦6³m8\ï3º-Mh\Ë\ÉÀ†A\÷’m£‹5˜{A¹\Ýh·‹NyÙ‰\Þ\È\ËF,\ö²¸“½l\Ü\É/K¬¬„n¤OpMü\Ò\ÊÉ˜\Ü|\×\á/DMt‰*²l&”—l\í(Ñ½]Jža\ÆL\r|cWs\ôlGN\äÊ²\Õf\è ks¦k1«\\3Ø‰\ß6†\à\ÌØ•ø7±Ø‰–S(\ÇÍgÝ ºjgTCS©`¦©<\ö‡\Ã\Â8\Å2¿·5n‡\àl.\ás¨\Çn\Z\×w\à\Ü?“b4Á-\æMÇ\é\×\É*œ\ÜNG“A²¼Y\â\ÛE<˜\ÍV\É œL†\ñ2™M’(þ¯½¤þ\ï\Æ\õÿ\0\0\0ÿÿ\0PK\0\0\0\0\0!\0xú\"\ì\Ô\0\0\Ð\0\0\0\0\0word/numbering.xml¼–[›8\Ç\ßW\êw@Hû°3\æBP3Ugº³šª]­\Ú\Ù\à€	\Öø‚Œ\É\å\Û\×L.¤0R^bbûü|þ\ö\ñ\ñùøiG‰µA¢Äœ-m\÷Þ±-\Äžb¶^\Úÿ¿>\ßE¶UJ\ÈRH8CK{Jû\ÓÃ‡?>ncV\Ñj¢¥¬Œ·E²´s)‹€2\É…\å=Å‰\à%\Ï\ä}\Â)\àY†¶\\¤Às\\§þ*OPY*\ÎdX\Ú-.\Ù\r£¥n•± É¡hw`¸£!3°\0Q\äM\0)…ž\ÛGù£Q!\Ð^\õ@Á$\òªGšM#]N#y}\Ò|\Z\Éï“¢i¤^8\Ñ~€\ó15˜qA¡T\Å\ZP(Þª\âN(\ñ\n,\÷Š\é„1{›\à‘²\ê\ÔOG\æ€\ò?5¾´+Á\â\Öþ®³×®Ç}\Ûtˆ[V-·\0h\'I)­²wùžT1Y\ï\Zˆ¨}\ä¬\Ìq\Ñe:•¦s\Ù\\Û€\r%fÞ¶p^µß¥¶/\Í1€C\ÜoÏŽ’\Æ\ó\ëD\×pš\Z\ÑYq\átM\ã	U|Xx\Ò\Öm®;0ù€\×„	\ZøXF\Ô2@r¸Ýšƒ^+\ÃiNEs\ðacÝ9\ðÜ™#@ZBx¾\ñC7\ÚüˆU¦2\Í\Ç\á\Ìm%\Ìa\Ù]š†˜\rL†›\0#<\é\ò™f¢q›6\ë€{zt†\Åú}\õÁ«\â@\Ãï£½R\öVWO#X\í…?NB\åûœù™\ÃBerš\Ä/k\Æ\\å‘º¾–ºV}úW²n\êO´«ûuü´\Ñie\é”h?¨*®J)`\"ÿ­¨u\ò\ïE]%UM*x,*!…\îl\n\ÆÏ™D\âQ ø¦§h\n+\õ²\ñª°\ò\è\Ñqžþ¶¡‘ø\Ú \òº/™“\ïW§\ß\õ\Ñc\Í\\IbfÌƒ0|z\ò\Ãf„l\ô\0VM\ãT,¢\óÀqŽãºµµ\Æ\Üm\ìTûL»\Î%˜\Âv1\ÅzU/œû\Óý«\ëÿš˜^‚2\Ùtÿ	\Ý`¦u\ê\î¥=s\\\íJÙº.·ý\Ð\ÑsA7Y´\Í3g²\Ô31“Ú‹*\á\í\Ôz¨—=Z\ÓO„.\ê\õªuƒ\ôŒa\Â	\ß\"\ñ\rIul—\Å{\÷cÅ»žwUýeI^O\Ò\ã{$ý\à²ËŠüKŠ^\çW$-‚SIn4@’.\Éyž(\éjx£O\È\Ã	\'\Ü.\èf£%ù~4A\Ò\ìfAŽºÀ=\Ë\"ƒ‚.¼M\Ð\ÍGŸPMI\ó\Û]4Z\Òlv–IŠnt‹\ñAzg©\á7AN*‚\Ö5«þ\Õ\åf\ÔGœVu=¢;ƒ(\ô¢\È\Zy\'…qÎ¬\Å4³i›\Â\â\á\0\0\0ÿÿ\0PK\0\0\0\0\0!\0hžA—\0\0\"§\0\0\0\0\0word/styles.xml\ì]ms›Hþ~U\÷(ºûµe\Éo©\õnù%¾¸.\Éz#\ç\ö\óFk:@q¼¿þ\æ\r4R3ˆ\ÚZo\ê*U±\ô3\Ã<ý4\Ó\rb~üù\Û<	¾ò¼ˆ³\ô|o\ð\ÃÁ^À\Ó0‹\â\ô\á|\ï\ËýÍ›Ó½ (Y\Z±$Kùù\Þ3/\ö~þ\é\ïû\ñ\émQ>\'¼@Z¼‡\ç{³²\\¼\Ý\ß/\ÂŸ³\â‡lÁS±sš\åsVŠ¯ù\Ãþœ\å\ËÅ›0›/XO\â$.Ÿ\÷Ž\÷L\Þ%›N\ã_g\ár\Î\ÓR\Ù\ï\ç<ˆYZ\Ì\âEQ¡=uA{\Ê\òh‘g!/\nq\Ò\óD\ã\ÍYœ\Ö0ƒ\0š\ÇažÙ´üAœŒé‘‚\æƒ\õiž¬\0Žp\0‡\0\à8\ä\ßp§c_X\Ú8q„\Ã9®q\â\È\Â\ñ\ëŒ-Q‡Ãª\ò4·°Š¨Œf8¸Š£}i\ËJ6c\Ålqš\àG¢v°$mLŽ´£\Z\ðy.9œ‡oo\Ò,g“D 	¯„c\nXþ/ø‘\ÔGþMm—\Ãb>LùAŒ\ÚOBºQ^\ó)[&e!¿\æw¹ùj¾©?7YZÁ\Ó[V„q|/ú+\ZÇ¢ý\÷i\ï‰=œ\åE³Æ3ù¡qOX”\Ö\æ\Ë8Š\÷\öe‹<O\Å\î¯Lü¡\ÞTüQo¨·\\\ÉN­mKXúPm\ã\é›\ÛOv\çÔ¦/c¹i\"š:\ßcù›\ñ…2Œ\Þ&\ñ+—¹ˆc\ò›B\Ð\á.®\Äù\óo\å’%\ò\à}30ú¯5\\‹\Íoª—ÆªSlZr\Õ\Ç²I,ƒ\è\á\ÑY\õ\å\óRrÉ–ef\ZQ\0úo\r»ÁN„¾±ŽÀb/Ÿ~¾Æ£q)vœï©¶\Ä\Æ/·wyœ\å\"Êžï©6\Å\Æ1Ÿ\Ç\ï\ã(\â©u`:‹#þÛŒ§_\n­¶ÿz£\Ùl³e*>OŽ•%E\ô\î[\È2îŠ½)“œ~’‰<z¯\ZW\æÿ­À†¶&ûg\ò\â6!T\÷Q‡Ò¢°Î¶s¹q\î\ê(TC\Ã]54\ÚUCG»j\èxW\rìª¡\Ó]5¤`^²¡8\ÄuD›¨\ÛpjD\ã8Ä†\Æqh	\ã\n\ZÇ¡4Ž\Ã\Ñ\Ñ8?F\ã8\ÜSf¡\Ë-g:¼½wû5\Âwû%ÁwûÀw{À\÷\Ã\Ý\ßýp·‡s?\Ü\í\Ñ\Ûw{°\Æ\ã\ê©Vp+d––½U6Í²2\ÍJ\ÈIoo4–\n,•‘\Ó\àÉ‹\ÏIN’\0FG6s!\î2\õ}»‡(‘ú_\ÏK™8\Ù4˜\Æ2\å\é\Ýqž~\åI¶\à‹\"G˜s‘”9F\ÄÇ§s>\å9OCN\é\Øt 2\Ò\å|B\à›\ö@†\ÅÓˆxø*D’ P;´ÈŸgR$1S\ÏY˜gý»–1²ø\ð!.ú•	.—IÂ‰°>Ñ¸˜\Â\êŸ(˜þ©‚\éŸ(˜þ‰\Å\Õ4¢‘2hDfÐˆ\ÆMû\'Õ¸4¢q3hD\ãf\Ðú\Û}\\&*\ÄÛ³ŽA\÷\Ú\ÝU’\É{(½û1ŽRU•\ídj¦Á\Ë\ÙC\Î³@Vµ›a\ísÆ¶s™E\ÏÁ=\Å5­F¢š\×+‘µ\ì8]\ö\Ð54*q\ÕxD\òª\ñˆV\ã\õ—\ØG1M–´\÷4ù\Ìx9)E«:‰vÌ’¥ž\Ð\öW+û{\ØJ\07q^É –Àƒ?\Éé¬¤“\"\ò­zÙ¿c+¬þ²ÚŒJ¤\Ý3½”7\\i\Â\ðû\ç\ÏEZ\ö\Ø\é&K’\ì‰Gtˆ\ã2Ï´¯Ù’?T”t’ü»ùbÆŠX\åJk\Ý/\õ\Õ\ÓÁG¶\è}Bw	‹S\Z\ÞÞ½™³8	\èf\ï\ï?~î³…L3\åÀ\Ð\0^fe™\Í\É0M%\ð¿\ñ\É?i:x!’\à\ô™\èl/ˆ\ÊC\n\ì*&¸\Èh¤,\"B\Ó\Ì8I®¡\n\ï\ßüy’±<¢A»Ë¹~¥\äDˆc6_\èI¶D\\|\ñ‡`6¤\ðþ\Ã\òXÖ…¨DuOf•\r‹\å\äw\öuŸ²€¤2\ôË²T\õG5\ÕU\Ötpý§	kpý§ŠMqyþKp²kpýOv\rŽ\êd¯V±\óª7\Õ\éVx\Ô\ç\Û?ù3xY’\å\ÓeB7€ \ÙV€dC˜%\ËyZPž±\Â#<a…G}¾„.£\ðJr\n\ï_y‘‘¡À¨˜P`T4(0*)ýŸÐ±Àú?¦c\õVGƒM,0*?#½ü\Ý\å±À¨üLQù™£\ò3F\åg\Ã\ë€O§bLw‰± ©|Î‚¤»Ð¤%Ÿ/²œ\å\ÏD\ïþÀ\n¤\Z\í.Ï¦\ò—0Yª\â&€”5\ê„p²­\á¨HþOÈº&±(ûEPeI’eDµµ\ÕGY®?»¶\ÍLý¤w\î\òY–D<wœ“\ÛV\ä\Ëcý³Œ\Í\î«nt*{~ˆfe0ž\Õ\Õ~\æø`«e•°¯™mo°iÌ«¿4™}\äQ¼œW…?¦8v7V½f<\Ún¼šI¬Yu´„mo·\\Í’\×,O:Z\Â6O;Z*®Y¶\é\ášåŽp\Ò\æ?uŽ\çp¾“6/ª›ms¤Ú²\ÉOÚ¼hM*ÁEÊ»nšq\Ûw\Û£\"7\nFNn”ÎºrC´	\ì3ÿ\Z\Ë+;&hª\ö\ê§\'@\ÜW“\èN‘\ó\×e¦\ë\ök7œºÿ¨\ëVLœÒ‚8\Ã\î7®Ö¢Œ{;‡7D\ç¸\ã†\è€\Ü\"‘\Ó’\Ü(c“¢srC £¼\"\à¢´\ÇE+h\ï­ ŠO´\ê1pCtž¸!\ÐB…h¡\ö˜)¸!PB\æ^B…(h¡B´P!Z¨p†*´\Ç	\Úû¢ø¢ …\n!\ÐB…h¡B´P!Z¨žs{§¹—P!\nZ¨-Tªš/\ö*´\Ç	\Úû¢ø¢ …\n!\ÐB…h¡B´P!Z¨%T`\î%Tˆ‚*„@B …ªj\è/Th*´\÷*D\ñ*DAB …\n!\ÐB…h¡B´P!J¨À\ÜK¨-T*„@U\Ý,\ì!Th*´\÷*D\ñ*DAB …\n!\ÐB…h¡B´P!J¨À\ÜK¨-T*„h\óOs‹\Ò\õ˜ý\0_\õt>±\ßýÖ•\é\Ôgû§\Ü6Ô°;T\Õ+7V\÷\ß\"\\f\Ùc\Ðø\ÃÃ¡\Ê7ºÄ“$\ÎT‰\Úq[\Ý\ÆUD n|þr\Õþ½\çK—\Ìo!\Ô=S\0>\êj	j*£6—·-A’7j\ót\Û\Ì:Gm\Ñ×¶—ÁQ[\ÐUº¬J—#`\Üf,\ãÃ¼-Z[\æpˆ\Ûb´eG¸-2[†p€\Û\â±ex\È\à¼i}\ÔqœŽ\ë\çKB›;Z\'n„6·„\\U\á\n£+in„®\ì¹º\Ò\èF@\ñ\é„Á\ë†B3\ì†\ò£\Z\ÊKµ¿P\ÝXª!‚\Õ\0ÆŸj\åM5„\ò£\ZF,\ÕKµpv#xQ\r`ü©†P\ÞTC(?ª\á¥K5DÀR\r°T\÷¼ ;aü©†P\ÞTC(?ª\á\äK5DÀR\r°TC/ªŒ?\ÕÊ›j\åG5È’\ÑTC,\ÕK5D\ð¢\ZÀøS\r¡¼©†PmT«*\Ê\Z\Õ(†-s\Ü$\Ì2\Ä]-C\\p¶=²%\Ë\Ú3[²<³%\ÈU\Å9.[²Is#teÏÐ•F7ŠO\'žX7ša7”Õ¸l©‰j¡º°T\ã²%\'Õ¸l©•j\\¶\ÔJ5.[rSË–š¨\ÆeKMTûg7‚Õ¸l©•j\\¶\ÔJ5.[rSË–š¨\ÆeKMTã²¥&ª{^0þTã²¥VªqÙ’›j\\¶\ÔD5.[j¢\Z—-5QË–œTã²¥Vªq\ÙR+Õ¸l\ÉM5.[j¢\Z—-5QË–š¨\ÆeKNªq\ÙR+Õ¸l©•j\\¶\ôQ˜\Ä¯€\Z\ÏY^t\ï‹{ÏŠY\Éú¿œ\ðKš\ó\"K¾\ò( =\Õ¨³\ÜZ[þJb«¥\Å\ñ¥3ùt\ë\çJ‘~¬T\ÞF\õ2U\ÒX\ö$0«‡™Íª\Ã\æv­úœ\"§6\Ç\\N.O¯M_\ä–N\ÔÍš»\È\Ð\ðj\Ù+\ÕÞ„‰\óýEŽ\èV*_™Ø°]ºJµ½j\æj\Ær½w\å\Ä\Õ1F¦-gyzt}fB’Y\Ö\ì‘\ó\Å\'Ñ¾\Ú&¿\æx¡¾­V<›È·‰\ê%\Ï\Ìh§FÏ™~ŸÓ‡¯IÝ’H\ÓF\ë\òs\ì\÷–\å\ç\ä\Îwf›Ü¿¶Ýš\åj:¹ù²^.”ú¯úuxs4:S@¬b\ÃùS‘A9“\Ú,W@—7\Zaµ`]u\Ú^°No³–’\óqžC§\ó˜\àD\ã<‡œg%X}Üš\\_Ø½ÌŠz[Ý«Šß™{\r\rÙ¶{\ém=\Ýk\èt/\ó {\r¿\÷ª†\Ü\á^Ûœh®rh\ætkKgªm=]e\ät\ó\ä«Œ^¹«œÚžR…}\è)J>\ôž\ëÿ¯t\ïúúMO8rz„y¢‹\Æ#Ž¾P*y}±£§\è\Åa›|ÀŒ(¿r\Ù>\àt%‹…£3ùo\Ó!\äzL+w¸\å:¿\ê\ì{zÃ‰\ÓL­‚\ÆN¾o¨ü%ÂŽù?u\òof%4üŸ¾Rþ·1®D°\ÛIÁ‰ü×…ÿkŠ9â™“\Ã\n\rÿgQþ«!~\Ñ)\09\ã¡lšW¶;*lf\é¥ú\ÝAj\á¥M_p¬\Ï\ä\à\ÑÇ¶\ñ\è\îw)\ë¼-}Vu\à\ÖÒ .;­³§•“DS->Ü¦\ÒÑž¤—\Ô=¾1\r%\ö_\ñ$ù\È\ô\Ñ\Ù\Â}hÂ§R.b\ï\à@½©scÿD/:\á´\Ï\Õ\Ý	\'Àþzg\ô\×v?\Ñ\ËP\Æúg3\ÎJ¬,Á7·ú\rWß‘\î\è\Ã\á²C3–l\öo­–º\ÙK³3«ø³\Ð\Zu\à\nc\ÆÃ!\Ì”þ_6ESª+œ.J‰(5uº®W¥\ïŸ\á>•K$Ãº\È\èbxHÄ°©‹\Ò3üg\0l¶ú‘l\é:Ÿ‹­[¦4ùz\Ø\ÚuÉŠ®µ¹X9\"bÅ”¿\r‘\ó \ë].Ž‰x0£ø—P}%I‰.:¹(9!¢\Ä\Ô\É^©4þtt\å\ÇE\Â)	\æ*ø×¸j¼l¾¿]ŒqQrFD‰ù\×z\É\ØQ™M¿:cs¬\õÖ¦!\Æ\Ö\×ÒŠ°†¢ŒI\ØPµ3P \Ów\ÌdqL.–\Ë/Ÿ—\Ò\ÉØ²Ìª!N\å.Yb^\å¯G\î<Û±:#u\Öoªay\äy=\ö«¹tµ\å\È‹=»\Ö\Û\èD¹b°\ÑKúª\Ñr5·s¼Î¬v\÷œ5k¸^\Å{“ z…’+°V1›J\Ì\ér®?\Ä	|\ì\Ê\ì|\á7v¸˜d·‰\ï\Z%.\òû\ntÝ‰Üœ¿\ò‰\ãSÖ¬L½\ÚÀ&3z+…&R› \Íd\Æ\ó\êj?Í¦Žø=¬,e\î\ÊU»@›-s\ËÑü×…5\ê4x5Tt\ôU‰Å©›…­\Ù\é\È5»¬¼k²Z°cs¬\Ô\ÏV»·ù0Š¡©Ÿ¡2Vw¸\äý)ù\ò=\ãŠms¹Ž\îRŸ´y#]ýš¼\Í\Ó\ï\Ñ\Ã9JƒG .”Û½c‡i™±hm\ëË¬ls.!\În®-\Ò\r}\òˆ\Åe¤þ\êû¢\ê¸Bx’Y°ûùˆü üK\Æ¥>5\ìže\ñú\ê·$e`\Îl\Û\ï*\ä7\íV–\ÆNUo\Ô\r]ýM\Ò7øÿ©eP\àG­®\Û\÷r°&’-û\êt\ß\Z#W/\ít\r\àêˆ¾Q²ºÕ‡Š’Ýª­B•\äŠ-h\ÆL\"«\ç/7F´úTü\ô?\0\0\0ÿÿ\0PK\0\0\0\0\0!\0&\ÞúHo\0\0-\0\0\0\0\0word/webSettings.xmlœ\Ó\Ýn\Â \0\àû%{‡†{¥:5Kc5Y—\Ý,K¶=\0Â©%§\\uO?¨\Õ\ÕxcwS\Ð\ó\å\ð7_\îµJ¾Á:‰&\'£aJ0…4›œ|}®$qžÁ\Z\È\ÉY.\î\ï\æuV\Ãú¼º$(\Æeš\ç¤\ô¾\Ê(u¼\Í\Ü+0a²@«™]»¡š\Ù\í®\Zp\Ô\ór-•\ô:N\Ói{‹‚E!9<#\ßi0¾É§TÑ¸RV\î¤Õ·h5ZQY\ä\à\\XVGO3i\Î\Ìhri\É-:,ü0,¦­¨¡Bú(m\"­þ€i?`|\Ì8\ìû­ACf×‘¢Ÿ3;;Rtœÿ\ÓÄ®1~8\Õ›˜Þ±œ\ð¢\ìÇÎˆ\Æ\\\æY\É\\y)ªŸ8\éˆ\Ç¦o»&\ôÛ´\é<\èx†šg¯ƒ–­UÂ­L\Â\ÅJ\Z8~\ÃùÄ¦	aßŒ\ÇmiƒB\Å \ì\Ú\"¼_¬¼\Ô\òVhŸ,\Ö,\ÃL)¬\ß\ß^B‡^<\ò\Å/\0\0\0ÿÿ\0PK\0\0\0\0\0!\0\Þ[\Z\0\0)\0\0\0\0\0word/fontTable.xmlÜ”ÏŽ›0\Æ\ï•ú\È\÷\r†l\Z-Y©ÛT©\ê¡\Ú>€cL°\Ö\Ç	\É\ÛwlHJ­´\ô\ÐCA\à\á\ó\Ìû³\á\á\ñ¤Ur¤5%\Éf”$\Âp[I³/\ÉÏ—\íÝŠ$\à™©˜²F”\ä,€<n>~x\èÖµ5¬7°Ö¼$\÷\í:M7B3˜\ÙVì¬­\Ó\Ì\ã£Û§š¹\×C{Ç­n™—;©¤?§9¥K2`\Ü{(¶®%_,?ha|¬OPH´\Z\ÙÂ…Ö½‡\ÖYWµ\Îr€sÖª\çi&\Í“7 -¹³`k?\Ã\É#Š(,\ÏhŒ´ú\rXL\ä7€%§iŒ\ÕÀH±rÌ‘\Õ4\Î\òÊ‘Õˆ\ówƒª\Ã$D>¿Œ#4¡|Ä‚\ÊW\Í4\Üe\ÒP\Ë<k4k5XŒˆýS–¿Ž™bši‹+\ð¬\Ã\Zj¾þº7Ö±B\î\Ê7VÁ\áŽ\ëšŠSÔƒ-CP« k›\á\ËMºµa\ZA/RH¾‹.ùa531¡eÆ‚\È0\ç\È\Ð\Z[\Ò9]\Ð¯£‚¤!‘7Ì°>‘\örÍ´T\ç‹\ê\"7v´\Ò\ó\æ¢™“a2}\È=v`GK\òL)ÍŸ·[\Ò+YIžP¹_->J\ÞOƒ2¿*4(<r\âc\Ösx\ä\\s\ði\ïÄ#OLÉ“o8±„³@\òIN@\'¦9Q\Ü8?¨¼¸ÿ—N$\ß\ä¾\ñoú\\øOý\Øü\0\0ÿÿ\0PK\0\0\0\0\0!\0j‰Ç„t\0\0\õ\0\0\0docProps/core.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ’MO\Ã0@\ïHü‡*\÷.ý\Ðª\Ú\"\rq‰\Ù\Â\Ú$J¥ÿž´];ª\íÀÍŽŸ_]\'ù\ÕO]\ß`Ôª \ñ\"\"(®…T›‚<¯o\ÃK8dJ°J+(HŽ\\•\çg97\×­6`Q‚¼I¹Œ›‚lMF©\ã[¨™[xBùâ‡¶5CŸ\Ú\r5Œ\ï\ØhE´d‚!£04“‘ì•‚OJ\óe«^ 8…\njP\èh¼ˆ\éE°µ;\Ù\ÐWþµ\Ä\ÖÀIt,N\ô“\Ø4Í¢I{\Ô\Ï\Ó×‡û§þWC©º]q e.x†+(sz}\ä¾\Þ?\ãp<%>\æj[\Þi#w,X\é–†²\ç\ÆZ·\õ´¶\Ây\Ã,\ó˜\0Ç­4\è\ïr\ð\Ï<]1‡þr?$ˆU{ü©c¤\ë²\ð-»\÷Q\Æ=1¥ù~\Ù\Ãx ¿¤lX\éXyI¯oÖ·¤L¢dF\Ë0Y®\ã$K/²(z\ë&œ\õ„\õ~€\Z\Ó,J\æ\ÆQ0,iþP\Ë_\0\0\0ÿÿ\0PK\0\0\0\0\0!\0üù\ÓG\à\0\0\à\0\0\0docProps/app.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œSÁn\Û0½\Ø?º7Š“ \ËEÅb\èa[\ÄmÏšL\'\ÂdIØ \Ù×¶O\ÙzªO\ô\ÓI‰›—\ÖGˆ\Éx·f\åd\Ê\np\Ú\×\Æ\í\×\ì¡úzµdEB\åje½ƒ5;Ab7\ò\ã±>@D© 	—\Ö\ì€Vœ\'}€V¥	¥e\Z[…\Æ=\÷Mc4\ÜzýÜ‚C>›N¯9¼ ¸\Z\ê«0\n²Aqu\Ä\÷Š\Ö^wþ\Òcu\n¤\'Em°\nAþ\èþ´“\Úc+øÈŠÊ£²•iA\Î\æÄ‘Øª=$¹|\0\â\É\Ç:\Éùb)ø\0\Åæ ¢\ÒH-”\å\ç\å\'Á3B|	Á\Z­º+¿}\ò\r\÷½\å¢</t\è\çh\ð$§‚\ç¡øf9(¯y‹jU8¼\Z#±\Ó\ÊÂ†: eþ—w º\én•\équ>\Éü¦ù\ÎX\ñS%\èú¶fGrÈ†²!\è±\r	£¬Z\Ò\ã\æe96Y\ö.û \÷@ø\Ò]Bºo\ènø†\Ù27\Û{¬fvrg\ç3þQ\Ýø6(G\r\æ#¢ÿJ¡\ò·\Ýv¼\ö\ð’\Ì\æþd\ð°J\ÓLf\óy™o@–;b¡¦‘ŽC	qGWˆ¶;€þu{¨\Ï5ÿ\'ºz,-\ÃdJ_¿DgŽ6a|I\ò\0\0\0ÿÿ\0PK-\0\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0_rels/.relsPK-\0\0\0\0\0\0!\0z½q\n\0\0Gœ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0word/document.xmlPK-\0\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ø\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0{C¼]\Í\0\0\Ï \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0(\ï3F\0\0´\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0xú\"\ì\Ô\0\0\Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´#\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0hžA—\0\0\"§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸\'\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0&\ÞúHo\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ý7\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0\Þ[\Z\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ž9\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0j‰Ç„t\0\0\õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ú;\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0üù\ÓG\à\0\0\à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0…>\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0›A\0\0\0\0','2025-09-04 16:13:59',1);
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int unsigned NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int unsigned DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (5,'hello','hi','2025-09-01 13:47:16',1);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gopika','boyapatigopika2004@gmail.com','12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-05 15:57:26
