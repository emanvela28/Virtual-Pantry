PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE admin_table (
	admin_id INT,
	admin_name VARCHAR(50),
	admin_email VARCHAR(50),
	admin_phone VARCHAR(50)
);
INSERT INTO admin_table VALUES(1,'Oscar Benitez','obenitez3@ucmerced.edu','555-123-4567');
CREATE TABLE customer_table (
	customer_id INT,
	customer_name VARCHAR(50),
	customer_email VARCHAR(50),
	customer_phone VARCHAR(50),
	customer_address VARCHAR(50)
);
INSERT INTO customer_table VALUES(1,'Dulce Butting','dbutting0@gov.uk','563-632-9949','58379 John Wall Junction');
INSERT INTO customer_table VALUES(2,'Alexei Wraight','awraight1@illinois.edu','737-127-4416','8888 Miller Trail');
INSERT INTO customer_table VALUES(3,'Lauryn Billanie','lbillanie2@rambler.ru','713-599-0030','9553 Golf View Hill');
INSERT INTO customer_table VALUES(4,'Fallon Gawne','fgawne3@apple.com','179-373-6538','516 Miller Terrace');
INSERT INTO customer_table VALUES(5,'Muffin McCrossan','mmccrossan4@ameblo.jp','916-303-9281','194 Walton Lane');
INSERT INTO customer_table VALUES(6,'Blair Lindbergh','blindbergh5@ebay.co.uk','561-485-1636','910 Dayton Crossing');
INSERT INTO customer_table VALUES(7,'Mikel Hause','mhause6@reference.com','204-845-3487','93 Hoard Center');
INSERT INTO customer_table VALUES(8,'Kirk Burrett','kburrett7@spiegel.de','713-825-6327','56478 Esker Circle');
INSERT INTO customer_table VALUES(9,'Matty Blackstone','mblackstone8@stanford.edu','212-556-5242','342 Golden Leaf Hill');
INSERT INTO customer_table VALUES(10,'Siusan Ducarne','sducarne9@answers.com','375-554-1805','222 Carpenter Terrace');
INSERT INTO customer_table VALUES(11,'Ozzie Eilles','oeillesa@scientificamerican.com','442-503-6431','052 Jana Point');
INSERT INTO customer_table VALUES(12,'Irma Gruszecki','igruszeckib@boston.com','138-992-7962','43068 Jenna Terrace');
INSERT INTO customer_table VALUES(13,'Faydra Leyrroyd','fleyrroydc@canalblog.com','781-847-8924','0482 Dapin Road');
INSERT INTO customer_table VALUES(14,'Derron Kiendl','dkiendld@illinois.edu','401-626-1615','7 Randy Crossing');
INSERT INTO customer_table VALUES(15,'Dulcine Abramovicz','dabramovicze@go.com','332-497-0999','25763 Luster Plaza');
INSERT INTO customer_table VALUES(16,'Chiarra Metschke','cmetschkef@google.nl','875-614-1334','12 Fieldstone Drive');
INSERT INTO customer_table VALUES(17,'Dael Garvin','dgarving@wikispaces.com','660-696-6522','6 Sycamore Avenue');
INSERT INTO customer_table VALUES(18,'Mallissa Cowden','mcowdenh@soundcloud.com','112-637-5949','26 Onsgard Street');
INSERT INTO customer_table VALUES(19,'Nancie McTaggart','nmctaggarti@berkeley.edu','264-521-4236','6 Meadow Vale Parkway');
INSERT INTO customer_table VALUES(20,'Ambros Schohier','aschohierj@shareasale.com','404-316-1873','3 Caliangt Park');
INSERT INTO customer_table VALUES(21,'Arlina Mayer','amayerk@amazonaws.com','330-474-0720','0 Forest Run Park');
INSERT INTO customer_table VALUES(22,'Base Barrass','bbarrassl@cpanel.net','605-209-2645','915 Manitowish Plaza');
INSERT INTO customer_table VALUES(23,'Lelah Dyett','ldyettm@wufoo.com','139-163-5959','9128 Troy Way');
INSERT INTO customer_table VALUES(24,'Darelle Tilsley','dtilsleyn@feedburner.com','576-119-0443','09 Maryland Street');
INSERT INTO customer_table VALUES(25,'Hynda Darke','hdarkeo@dailymotion.com','281-418-9618','279 Straubel Center');
INSERT INTO customer_table VALUES(26,'Isador Drable','idrablep@time.com','907-259-2477','8449 Milwaukee Parkway');
INSERT INTO customer_table VALUES(27,'Brnaby Hallitt','bhallittq@ustream.tv','192-102-1865','05054 Carpenter Pass');
INSERT INTO customer_table VALUES(28,'Marylinda Brocks','mbrocksr@netvibes.com','639-211-5254','7869 Mcguire Street');
INSERT INTO customer_table VALUES(29,'Therese MacAndrew','tmacandrews@blogtalkradio.com','379-705-3570','0445 Mcbride Hill');
INSERT INTO customer_table VALUES(30,'Karine O''Lennane','kolennanet@globo.com','576-779-6890','88 Schiller Lane');
INSERT INTO customer_table VALUES(31,'Wilbert Duddle','wduddleu@twitter.com','117-116-7163','85 Briar Crest Avenue');
INSERT INTO customer_table VALUES(32,'Archibaldo Hoppner','ahoppnerv@earthlink.net','393-863-6002','06 Esker Avenue');
INSERT INTO customer_table VALUES(33,'Oren Behr','obehrw@dagondesign.com','212-597-1571','30019 Northfield Circle');
INSERT INTO customer_table VALUES(34,'Adan Dochon','adochonx@ibm.com','890-647-1669','0 Tomscot Alley');
INSERT INTO customer_table VALUES(35,'Danita Sivier','dsiviery@techcrunch.com','182-106-8201','21242 Rutledge Way');
INSERT INTO customer_table VALUES(36,'Luciana Ghiriardelli','lghiriardelliz@addthis.com','264-750-0619','61628 Warner Drive');
INSERT INTO customer_table VALUES(37,'Salvatore Medd','smedd10@google.com.br','589-557-5186','4 Grasskamp Crossing');
INSERT INTO customer_table VALUES(38,'Arch Swigger','aswigger11@prlog.org','557-383-4654','4146 Graceland Pass');
INSERT INTO customer_table VALUES(39,'Ronnie Pickthall','rpickthall12@wordpress.com','999-970-8884','1 Rieder Street');
INSERT INTO customer_table VALUES(40,'Frannie MacColm','fmaccolm13@rambler.ru','639-436-2614','551 West Circle');
INSERT INTO customer_table VALUES(41,'Fayette Meyer','fmeyer14@myspace.com','425-303-8223','43 Gateway Plaza');
INSERT INTO customer_table VALUES(42,'Britt Grant','bgrant15@drupal.org','350-101-1903','18769 Vidon Alley');
INSERT INTO customer_table VALUES(43,'Reinald Kneath','rkneath16@comsenz.com','547-352-6812','1 Wayridge Drive');
INSERT INTO customer_table VALUES(44,'Karlis Fairbourn','kfairbourn17@sphinn.com','483-479-8695','8 Burning Wood Center');
INSERT INTO customer_table VALUES(45,'Clifford Foley','cfoley18@microsoft.com','485-391-3952','49 John Wall Plaza');
INSERT INTO customer_table VALUES(46,'Olympia Ors','oors19@engadget.com','654-587-5051','66214 Bay Road');
INSERT INTO customer_table VALUES(47,'Wyatt Schuster','wschuster1a@google.ru','682-753-6291','836 Loeprich Pass');
INSERT INTO customer_table VALUES(48,'Pebrook Greber','pgreber1b@typepad.com','346-242-7217','6 Melby Center');
INSERT INTO customer_table VALUES(49,'Maddy Biers','mbiers1c@google.pl','613-978-1118','52786 School Street');
INSERT INTO customer_table VALUES(50,'Torin Durram','tdurram1d@wordpress.org','173-827-5934','9941 Pennsylvania Hill');
INSERT INTO customer_table VALUES(51,'Roldan Battisson','rbattisson1e@irs.gov','723-693-6819','0 Katie Hill');
INSERT INTO customer_table VALUES(52,'Ashly Pigrome','apigrome1f@wsj.com','694-989-6653','834 Armistice Center');
INSERT INTO customer_table VALUES(53,'Scotti Rimour','srimour1g@reference.com','388-630-4694','87924 Gateway Crossing');
INSERT INTO customer_table VALUES(54,'Brien de Courcy','bde1h@chronoengine.com','333-910-7642','678 Golf Junction');
INSERT INTO customer_table VALUES(55,'Adiana Geertsen','ageertsen1i@mtv.com','390-519-6544','528 Esker Alley');
INSERT INTO customer_table VALUES(56,'Clevey Bousquet','cbousquet1j@home.pl','689-701-7095','20 4th Crossing');
INSERT INTO customer_table VALUES(57,'Jedd Wharlton','jwharlton1k@theatlantic.com','587-911-9981','6193 Mariners Cove Road');
INSERT INTO customer_table VALUES(58,'Hailee Darlaston','hdarlaston1l@edublogs.org','481-227-3971','4353 Boyd Court');
INSERT INTO customer_table VALUES(59,'Austen Hartness','ahartness1m@archive.org','906-715-4965','4482 Londonderry Center');
INSERT INTO customer_table VALUES(60,'Maxy Denton','mdenton1n@naver.com','914-310-1337','65 Kingsford Center');
INSERT INTO customer_table VALUES(61,'Willetta Duquesnay','wduquesnay1o@theatlantic.com','450-319-9536','1820 Blue Bill Park Drive');
INSERT INTO customer_table VALUES(62,'Christiana Pirri','cpirri1p@mayoclinic.com','932-128-9762','5191 Burrows Junction');
INSERT INTO customer_table VALUES(63,'Marylynne Veasey','mveasey1q@ezinearticles.com','325-256-9846','74 Roth Road');
INSERT INTO customer_table VALUES(64,'Ingra Mattiello','imattiello1r@nationalgeographic.com','836-445-2354','53 Cordelia Crossing');
INSERT INTO customer_table VALUES(65,'Franzen Moodycliffe','fmoodycliffe1s@godaddy.com','640-779-0009','5 Riverside Lane');
INSERT INTO customer_table VALUES(66,'Valida Keizman','vkeizman1t@tripadvisor.com','148-564-8483','461 Straubel Avenue');
INSERT INTO customer_table VALUES(67,'Vernon Maddox','vmaddox1u@mtv.com','992-926-0356','5 1st Lane');
INSERT INTO customer_table VALUES(68,'Curtis Filyashin','cfilyashin1v@nih.gov','597-350-7776','1 Corry Court');
INSERT INTO customer_table VALUES(69,'Alphard Bareham','abareham1w@xing.com','964-484-1203','609 Harbort Point');
INSERT INTO customer_table VALUES(70,'Rand Place','rplace1x@prnewswire.com','359-835-0572','16 3rd Crossing');
INSERT INTO customer_table VALUES(71,'Dermot Hebbes','dhebbes1y@phpbb.com','950-681-2579','92 Bonner Trail');
INSERT INTO customer_table VALUES(72,'Tandie Hamill','thamill1z@wordpress.com','296-304-9146','246 Heath Way');
INSERT INTO customer_table VALUES(73,'Claudine Wrankling','cwrankling20@de.vu','680-871-4188','39514 Lyons Hill');
INSERT INTO customer_table VALUES(74,'Liz Hasling','lhasling21@businesswire.com','199-206-5734','1 Park Meadow Junction');
INSERT INTO customer_table VALUES(75,'Durant Kenworthey','dkenworthey22@cyberchimps.com','144-814-6397','00 Declaration Lane');
INSERT INTO customer_table VALUES(76,'Janel Jillitt','jjillitt23@sciencedaily.com','288-395-3124','57596 La Follette Pass');
INSERT INTO customer_table VALUES(77,'Paulina Pavlovic','ppavlovic24@gmpg.org','635-462-2016','95879 Vera Alley');
INSERT INTO customer_table VALUES(78,'Laureen Beames','lbeames25@nytimes.com','563-876-9716','08840 Granby Center');
INSERT INTO customer_table VALUES(79,'Taber Goodison','tgoodison26@icio.us','320-584-2322','04279 Lawn Court');
INSERT INTO customer_table VALUES(80,'Clerc Buckby','cbuckby27@ocn.ne.jp','936-755-5319','384 Buhler Pass');
INSERT INTO customer_table VALUES(81,'Almeta Garrie','agarrie28@istockphoto.com','511-785-7676','4 Caliangt Avenue');
INSERT INTO customer_table VALUES(82,'Yule Mabbutt','ymabbutt29@pbs.org','605-218-2709','736 West Crossing');
INSERT INTO customer_table VALUES(83,'Nerte Izatt','nizatt2a@state.gov','800-110-6309','20 Fordem Court');
INSERT INTO customer_table VALUES(84,'Giacomo Voss','gvoss2b@ocn.ne.jp','521-858-8809','17177 Helena Way');
INSERT INTO customer_table VALUES(85,'Stesha Cockerham','scockerham2c@livejournal.com','237-740-2247','724 Butternut Avenue');
INSERT INTO customer_table VALUES(86,'Asa Keyzman','akeyzman2d@phoca.cz','116-883-1906','0 School Crossing');
INSERT INTO customer_table VALUES(87,'Mord Nicolls','mnicolls2e@independent.co.uk','746-495-3590','8337 Jay Point');
INSERT INTO customer_table VALUES(88,'Zechariah Hanniger','zhanniger2f@chron.com','484-658-5124','16913 Fisk Lane');
INSERT INTO customer_table VALUES(89,'Rosemaria Ugo','rugo2g@twitpic.com','584-379-5714','47881 Trailsway Pass');
INSERT INTO customer_table VALUES(90,'Xavier Ferrarin','xferrarin2h@cbslocal.com','820-314-2733','2154 Vernon Junction');
INSERT INTO customer_table VALUES(91,'Adara Witcherley','awitcherley2i@twitter.com','845-986-7107','39366 Old Gate Parkway');
INSERT INTO customer_table VALUES(92,'Baird Iacovone','biacovone2j@narod.ru','259-769-8228','906 Dennis Avenue');
INSERT INTO customer_table VALUES(93,'Sheelah Cheine','scheine2k@wix.com','494-653-9237','520 Sunnyside Junction');
INSERT INTO customer_table VALUES(94,'Liana Stentiford','lstentiford2l@storify.com','267-107-4284','06309 Arkansas Lane');
INSERT INTO customer_table VALUES(95,'Cristin Stidworthy','cstidworthy2m@odnoklassniki.ru','787-513-6221','43 Mcbride Road');
INSERT INTO customer_table VALUES(96,'Mandy Docksey','mdocksey2n@forbes.com','938-549-2175','039 Butterfield Hill');
INSERT INTO customer_table VALUES(97,'Angele Zottoli','azottoli2o@redcross.org','202-814-0584','435 Redwing Road');
INSERT INTO customer_table VALUES(98,'Sara-ann Sirl','ssirl2p@surveymonkey.com','541-858-9118','39157 American Ash Hill');
INSERT INTO customer_table VALUES(99,'Guenna O''Rafferty','gorafferty2q@hatena.ne.jp','185-529-1340','237 Anniversary Hill');
INSERT INTO customer_table VALUES(100,'Cyrille Bennion','cbennion2r@xing.com','551-275-5735','96 Evergreen Crossing');
CREATE TABLE employee_table (
	employee_id INT,
	employee_name VARCHAR(50),
	employee_phone VARCHAR(50),
	employee_email VARCHAR(50),
	admin_id VARCHAR(3)
);
INSERT INTO employee_table VALUES(1,'Mattie Simpkins','273-541-6319','msimpkins0@hexun.com','1');
INSERT INTO employee_table VALUES(2,'Noellyn Shopcott','938-773-8648','nshopcott1@house.gov','1');
INSERT INTO employee_table VALUES(3,'Brana Cruikshanks','795-857-1081','bcruikshanks2@cargocollective.com','1');
INSERT INTO employee_table VALUES(4,'Edita Vallery','107-966-0552','evallery3@artisteer.com','1');
INSERT INTO employee_table VALUES(5,'Ruperto Raithby','442-132-9449','rraithby4@columbia.edu','1');
INSERT INTO employee_table VALUES(6,'Keith Rebichon','413-341-7518','krebichon5@gnu.org','1');
INSERT INTO employee_table VALUES(7,'Kerrie Vears','216-774-3746','kvears6@baidu.com','1');
INSERT INTO employee_table VALUES(8,'Floris Samart','248-887-9280','fsamart7@miibeian.gov.cn','1');
INSERT INTO employee_table VALUES(9,'Atlanta Swede','573-581-0192','aswede8@hatena.ne.jp','1');
INSERT INTO employee_table VALUES(10,'Muffin Sparrowhawk','439-542-2687','msparrowhawk9@loc.gov','1');
INSERT INTO employee_table VALUES(11,'Izzy Calderon','148-225-7865','icalderona@netscape.com','1');
INSERT INTO employee_table VALUES(12,'Consuelo Danslow','901-543-5651','cdanslowb@chron.com','1');
INSERT INTO employee_table VALUES(13,'Stesha Bernaert','579-544-2766','sbernaertc@businessweek.com','1');
INSERT INTO employee_table VALUES(14,'Goldia Largen','869-113-0423','glargend@blogtalkradio.com','1');
INSERT INTO employee_table VALUES(15,'Abba Keeler','504-350-8966','akeelere@nifty.com','1');
INSERT INTO employee_table VALUES(16,'Cliff Beentjes','550-643-7415','cbeentjesf@comcast.net','1');
INSERT INTO employee_table VALUES(17,'Prinz Caple','370-841-0324','pcapleg@yandex.ru','1');
INSERT INTO employee_table VALUES(18,'Rowen Josilevich','708-269-2151','rjosilevichh@princeton.edu','1');
INSERT INTO employee_table VALUES(19,'Malvin Schutte','272-370-5470','mschuttei@thetimes.co.uk','1');
INSERT INTO employee_table VALUES(20,'Hewet Torrance','577-622-6337','htorrancej@omniture.com','1');
INSERT INTO employee_table VALUES(21,'Renard Pawelke','771-811-7791','rpawelkek@scientificamerican.com','1');
INSERT INTO employee_table VALUES(22,'Mallory Athersmith','311-155-9101','mathersmithl@chron.com','1');
INSERT INTO employee_table VALUES(23,'Micheline Boaler','446-456-0988','mboalerm@w3.org','1');
INSERT INTO employee_table VALUES(24,'Sandie Isacsson','730-736-4401','sisacssonn@sfgate.com','1');
INSERT INTO employee_table VALUES(25,'Ganny Splevins','240-944-1549','gsplevinso@nbcnews.com','1');
INSERT INTO employee_table VALUES(26,'Aaren Parkhouse','776-522-6822','aparkhousep@ehow.com','1');
INSERT INTO employee_table VALUES(27,'Modestine Saville','212-229-6306','msavilleq@zdnet.com','1');
INSERT INTO employee_table VALUES(28,'Jenni Lenihan','285-328-2027','jlenihanr@flavors.me','1');
INSERT INTO employee_table VALUES(29,'Jocko Haslewood','411-938-9486','jhaslewoods@walmart.com','1');
INSERT INTO employee_table VALUES(30,'Menard Garrad','786-869-4638','mgarradt@cpanel.net','1');
INSERT INTO employee_table VALUES(31,'Jany Huitt','509-138-5445','jhuittu@unc.edu','1');
INSERT INTO employee_table VALUES(32,'Hollie Dorrins','649-631-8012','hdorrinsv@amazonaws.com','1');
INSERT INTO employee_table VALUES(33,'Neddy Antonetti','326-116-7333','nantonettiw@cornell.edu','1');
INSERT INTO employee_table VALUES(34,'Isidoro Blazdell','462-809-4868','iblazdellx@lulu.com','1');
INSERT INTO employee_table VALUES(35,'Kim Clemendet','773-369-3710','kclemendety@biblegateway.com','1');
INSERT INTO employee_table VALUES(36,'Katlin Hauxwell','943-441-6882','khauxwellz@theguardian.com','1');
INSERT INTO employee_table VALUES(37,'Austina Castiglioni','333-252-3758','acastiglioni10@shutterfly.com','1');
INSERT INTO employee_table VALUES(38,'Evaleen Cockson','887-819-4777','ecockson11@nasa.gov','1');
INSERT INTO employee_table VALUES(39,'Corabelle McCarrick','545-974-5404','cmccarrick12@census.gov','1');
INSERT INTO employee_table VALUES(40,'Andromache Celier','458-841-5924','acelier13@t.co','1');
INSERT INTO employee_table VALUES(41,'Neel Lynett','799-595-2541','nlynett14@ft.com','1');
INSERT INTO employee_table VALUES(42,'Jedediah Fanshawe','363-841-3810','jfanshawe15@cafepress.com','1');
INSERT INTO employee_table VALUES(43,'Michell Usherwood','255-250-6778','musherwood16@bandcamp.com','1');
INSERT INTO employee_table VALUES(44,'Ginni Crotty','997-820-8189','gcrotty17@hibu.com','1');
INSERT INTO employee_table VALUES(45,'Maxy Puxley','474-871-8703','mpuxley18@sciencedaily.com','1');
INSERT INTO employee_table VALUES(46,'Lauritz Ridehalgh','932-314-8564','lridehalgh19@goo.ne.jp','1');
INSERT INTO employee_table VALUES(47,'Merell Weine','871-114-8073','mweine1a@comcast.net','1');
INSERT INTO employee_table VALUES(48,'Wallis Petters','107-359-3612','wpetters1b@printfriendly.com','1');
INSERT INTO employee_table VALUES(49,'Carmelia Skeeles','279-385-5418','cskeeles1c@furl.net','1');
INSERT INTO employee_table VALUES(50,'Chad Gabey','445-554-1443','cgabey1d@biglobe.ne.jp','1');
INSERT INTO employee_table VALUES(51,'Chlo Jansson','391-588-6880','cjansson1e@tripadvisor.com','1');
INSERT INTO employee_table VALUES(52,'Chelsey Ivatts','923-240-8359','civatts1f@creativecommons.org','1');
INSERT INTO employee_table VALUES(53,'Aimil Canty','444-227-3180','acanty1g@flavors.me','1');
INSERT INTO employee_table VALUES(54,'Marabel Jowers','536-377-4966','mjowers1h@google.pl','1');
INSERT INTO employee_table VALUES(55,'Tod Benza','960-785-3292','tbenza1i@wikimedia.org','1');
INSERT INTO employee_table VALUES(56,'Deeann Andreopolos','124-414-8236','dandreopolos1j@webeden.co.uk','1');
INSERT INTO employee_table VALUES(57,'Juliann Fleetham','756-222-8475','jfleetham1k@mayoclinic.com','1');
INSERT INTO employee_table VALUES(58,'Stanislaus Manion','805-750-8874','smanion1l@blinklist.com','1');
INSERT INTO employee_table VALUES(59,'Bari Flude','979-149-4717','bflude1m@dropbox.com','1');
INSERT INTO employee_table VALUES(60,'Neala Matthewson','163-578-4616','nmatthewson1n@ocn.ne.jp','1');
INSERT INTO employee_table VALUES(61,'Kiel Lanegran','618-710-7925','klanegran1o@merriam-webster.com','1');
INSERT INTO employee_table VALUES(62,'Fonzie Rooney','694-513-6518','frooney1p@newsvine.com','1');
INSERT INTO employee_table VALUES(63,'Brendan Semrad','225-407-3939','bsemrad1q@nyu.edu','1');
INSERT INTO employee_table VALUES(64,'Miquela Maundrell','952-869-8625','mmaundrell1r@printfriendly.com','1');
INSERT INTO employee_table VALUES(65,'Jaymie Tommaseo','944-794-5768','jtommaseo1s@uiuc.edu','1');
INSERT INTO employee_table VALUES(66,'Erhart Jahnke','913-379-0084','ejahnke1t@umn.edu','1');
INSERT INTO employee_table VALUES(67,'Husain Roddick','606-706-8596','hroddick1u@cnn.com','1');
INSERT INTO employee_table VALUES(68,'Boot Oyley','723-662-3851','boyley1v@g.co','1');
INSERT INTO employee_table VALUES(69,'Pren Gawler','392-124-1910','pgawler1w@ask.com','1');
INSERT INTO employee_table VALUES(70,'Benjie Roo','630-653-8983','broo1x@infoseek.co.jp','1');
INSERT INTO employee_table VALUES(71,'Kary Agnew','760-494-1881','kagnew1y@wordpress.org','1');
INSERT INTO employee_table VALUES(72,'Chicky Georgi','508-310-6345','cgeorgi1z@ft.com','1');
INSERT INTO employee_table VALUES(73,'Kareem Yurinov','505-510-5241','kyurinov20@sitemeter.com','1');
INSERT INTO employee_table VALUES(74,'Agnella Froude','434-134-7521','afroude21@cyberchimps.com','1');
INSERT INTO employee_table VALUES(75,'Ethelda Glasscott','143-999-8764','eglasscott22@flickr.com','1');
INSERT INTO employee_table VALUES(76,'Lyn Stubbe','683-276-6722','lstubbe23@cam.ac.uk','1');
INSERT INTO employee_table VALUES(77,'Raimondo Hubbold','209-526-0958','rhubbold24@auda.org.au','1');
INSERT INTO employee_table VALUES(78,'Horst Delucia','520-490-3069','hdelucia25@miibeian.gov.cn','1');
INSERT INTO employee_table VALUES(79,'Caddric Barracks','750-355-5648','cbarracks26@gizmodo.com','1');
INSERT INTO employee_table VALUES(80,'Chrysler Smitheman','234-123-4767','csmitheman27@discuz.net','1');
INSERT INTO employee_table VALUES(81,'Sadella Etock','754-525-4413','setock28@booking.com','1');
INSERT INTO employee_table VALUES(82,'Ashlie Wordington','793-611-2766','awordington29@stanford.edu','1');
INSERT INTO employee_table VALUES(83,'Ibrahim Getten','573-107-2866','igetten2a@bloomberg.com','1');
INSERT INTO employee_table VALUES(84,'Andi Ebben','238-813-7448','aebben2b@hatena.ne.jp','1');
INSERT INTO employee_table VALUES(85,'Henka Dessent','714-778-0532','hdessent2c@sitemeter.com','1');
INSERT INTO employee_table VALUES(86,'Katrina Follit','942-340-8218','kfollit2d@stumbleupon.com','1');
INSERT INTO employee_table VALUES(87,'Mellisa Bastide','926-196-1663','mbastide2e@china.com.cn','1');
INSERT INTO employee_table VALUES(88,'Jase Obispo','392-307-8624','jobispo2f@bloomberg.com','1');
INSERT INTO employee_table VALUES(89,'Mirelle Hevner','804-242-7948','mhevner2g@ibm.com','1');
INSERT INTO employee_table VALUES(90,'Vladamir Dosdill','820-148-3438','vdosdill2h@dell.com','1');
INSERT INTO employee_table VALUES(91,'Bealle Bachelar','469-321-3211','bbachelar2i@webnode.com','1');
INSERT INTO employee_table VALUES(92,'Evey Rainford','406-729-3788','erainford2j@omniture.com','1');
INSERT INTO employee_table VALUES(93,'Willabella Top','484-198-5348','wtop2k@fastcompany.com','1');
INSERT INTO employee_table VALUES(94,'Kelsey Gaukrodge','985-932-3522','kgaukrodge2l@123-reg.co.uk','1');
INSERT INTO employee_table VALUES(95,'Davon Coverdale','399-256-5634','dcoverdale2m@amazon.co.jp','1');
INSERT INTO employee_table VALUES(96,'Fabian Christofol','287-528-9685','fchristofol2n@miibeian.gov.cn','1');
INSERT INTO employee_table VALUES(97,'Harland Belli','548-955-0451','hbelli2o@alexa.com','1');
INSERT INTO employee_table VALUES(98,'Lucias Brettelle','593-152-3036','lbrettelle2p@dedecms.com','1');
INSERT INTO employee_table VALUES(99,'Harlan Aldred','714-911-3779','haldred2q@tripod.com','1');
INSERT INTO employee_table VALUES(100,'Gabriello Peppin','799-847-0885','gpeppin2r@bravesites.com','1');
CREATE TABLE fooditem_table (
	food_item_id INT,
	food_name VARCHAR(32),
	food_category VARCHAR(10),
	food_price DECIMAL(4,2),
	food_stockquantity INT,
	admin_id VARCHAR(3)
, food_url VARCHAR(255));
INSERT INTO fooditem_table VALUES(1,'apples','fruit',1.99,95,'1','images/apples.jpg');
INSERT INTO fooditem_table VALUES(2,'bananas','fruit',0.59,200,'1','images/bananas.jpg');
INSERT INTO fooditem_table VALUES(3,'bread','bakery',2.49,150,'1','images/bread.jpg');
INSERT INTO fooditem_table VALUES(4,'milk','dairy',3.49,80,'1','images/milk.jpg');
INSERT INTO fooditem_table VALUES(5,'eggs','dairy',2.99,100,'1','images/eggs.jpg');
INSERT INTO fooditem_table VALUES(6,'cheese','dairy',4.99,60,'1','images/cheese.jpg');
INSERT INTO fooditem_table VALUES(7,'yogurt','dairy',0.99,150,'1','images/yogurt.jpg');
INSERT INTO fooditem_table VALUES(8,'chicken','meat',5.99,120,'1','images/chicken.jpg');
INSERT INTO fooditem_table VALUES(9,'lettuce','vegetables',1.49,90,'1','images/lettuce.jpg');
INSERT INTO fooditem_table VALUES(10,'tomatoes','vegetables',1.89,100,'1','images/tomatoes.jpg');
INSERT INTO fooditem_table VALUES(11,'potatoes','vegetables',0.79,200,'1','images/potatoes.jpg');
INSERT INTO fooditem_table VALUES(12,'carrots','vegetables',0.99,100,'1','images/carrots.jpg');
INSERT INTO fooditem_table VALUES(13,'onions','vegetables',1.29,90,'1','images/onions.jpg');
INSERT INTO fooditem_table VALUES(14,'pasta','bakery',1.99,120,'1','images/pasta.jpg');
INSERT INTO fooditem_table VALUES(15,'rice','grains',2.99,100,'1','images/rice.jpg');
INSERT INTO fooditem_table VALUES(16,'cereal','breakfast',3.99,80,'1','images/cereal.jpg');
INSERT INTO fooditem_table VALUES(17,'cookies','snacks',2.49,90,'1','images/cookies.jpg');
INSERT INTO fooditem_table VALUES(18,'chips','snacks',1.99,70,'1','images/chips.jpg');
INSERT INTO fooditem_table VALUES(19,'soda','beverages',0.99,100,'1','images/soda.jpg');
INSERT INTO fooditem_table VALUES(20,'water','beverages',0.89,200,'1','images/water.jpg');
INSERT INTO fooditem_table VALUES(21,'coffee','beverages',7.99,50,'1','images/coffee.jpg');
INSERT INTO fooditem_table VALUES(22,'tea','beverages',3.49,70,'1','images/tea.jpg');
INSERT INTO fooditem_table VALUES(23,'ice cream','desserts',4.49,60,'1','images/ice_cream.jpg');
INSERT INTO fooditem_table VALUES(24,'frozen pizza','frozen',5.99,40,'1','images/frozen_pizza.jpg');
INSERT INTO fooditem_table VALUES(25,'canned soup','condiments',1.49,120,'1','images/canned_soup.jpg');
INSERT INTO fooditem_table VALUES(26,'peanut butter','condiments',3.99,80,'1','images/peanut_butter.jpg');
INSERT INTO fooditem_table VALUES(27,'jelly','condiments',2.99,70,'1','images/jelly.jpg');
INSERT INTO fooditem_table VALUES(28,'granola bars','snacks',2.99,60,'1','images/granola_bars.jpg');
INSERT INTO fooditem_table VALUES(29,'salad dressing','condiments',3.49,80,'1','images/salad_dressing.jpg');
INSERT INTO fooditem_table VALUES(30,'mayonnaise','condiments',3.99,70,'1','images/mayonnaise.jpg');
INSERT INTO fooditem_table VALUES(31,'ketchup','condiments',2.49,90,'1','images/ketchup.jpg');
INSERT INTO fooditem_table VALUES(32,'mustard','condiments',1.49,100,'1','images/mustard.jpg');
INSERT INTO fooditem_table VALUES(33,'pickles','condiments',3.49,80,'1','images/pickles.jpg');
INSERT INTO fooditem_table VALUES(34,'olives','condiments',4.99,50,'1','images/olives.jpg');
INSERT INTO fooditem_table VALUES(35,'salsa','condiments',2.99,60,'1','images/salsa.jpg');
INSERT INTO fooditem_table VALUES(36,'tortilla chips','snacks',1.99,100,'1','images/tortilla_chips.jpg');
INSERT INTO fooditem_table VALUES(37,'sour cream','dairy',2.49,80,'1','images/sour_cream.jpg');
INSERT INTO fooditem_table VALUES(38,'ground beef','meat',4.99,70,'1','images/ground_beef.jpg');
INSERT INTO fooditem_table VALUES(39,'pork chops','meat',5.49,50,'1','images/pork_chops.jpg');
INSERT INTO fooditem_table VALUES(40,'bacon','meat',6.99,60,'1','images/bacon.jpg');
INSERT INTO fooditem_table VALUES(41,'sausage','meat',4.49,60,'1','images/sausage.jpg');
INSERT INTO fooditem_table VALUES(42,'hot dogs','meat',2.99,80,'1','images/hot_dogs.jpg');
INSERT INTO fooditem_table VALUES(43,'frozen vegetables','frozen',1.99,100,'1','images/frozen_vegetables.jpg');
INSERT INTO fooditem_table VALUES(44,'frozen fruit','frozen',3.49,60,'1','images/frozen_fruit.jpg');
INSERT INTO fooditem_table VALUES(45,'frozen waffles','frozen',2.99,50,'1','images/frozen_waffles.jpg');
INSERT INTO fooditem_table VALUES(46,'pancake mix','breakfast',3.49,70,'1','images/pancake_mix.jpg');
INSERT INTO fooditem_table VALUES(47,'syrup','condiments',4.99,60,'1','images/syrup.jpg');
INSERT INTO fooditem_table VALUES(48,'butter','dairy',3.99,80,'1','images/butter.jpg');
INSERT INTO fooditem_table VALUES(49,'cream cheese','dairy',2.49,70,'1','images/cream_cheese.jpg');
INSERT INTO fooditem_table VALUES(50,'bagels','bakery',3.49,90,'1','images/bagels.jpg');
INSERT INTO fooditem_table VALUES(51,'english muffins','bakery',2.99,60,'1','images/english_muffins.jpg');
INSERT INTO fooditem_table VALUES(52,'cottage cheese','dairy',3.49,70,'1','images/cottage_cheese.jpg');
INSERT INTO fooditem_table VALUES(54,'frozen burritos','frozen',3.99,50,'1','images/frozen_burritos.jpg');
INSERT INTO fooditem_table VALUES(55,'frozen chicken nuggets','frozen',6.49,40,'1','images/frozen_chicken_nuggets.jpg');
INSERT INTO fooditem_table VALUES(56,'frozen fish sticks','frozen',4.49,40,'1','images/frozen_fish_sticks.jpg');
INSERT INTO fooditem_table VALUES(57,'frozen french fries','frozen',2.49,80,'1','images/frozen_french_fries.jpg');
INSERT INTO fooditem_table VALUES(58,'frozen taquitos','frozen',5.99,30,'1','images/frozen_taquitos.jpg');
INSERT INTO fooditem_table VALUES(59,'frozen lasagna','frozen',7.99,25,'1','images/frozen_lasagna.jpg');
INSERT INTO fooditem_table VALUES(60,'frozen pot pies','frozen',3.99,40,'1','images/frozen_pot_pies.jpg');
INSERT INTO fooditem_table VALUES(61,'frozen breakfast sandwiches','frozen',6.99,30,'1','images/frozen_breakfast_sandwiches.jpg');
INSERT INTO fooditem_table VALUES(62,'frozen ice cream bars','frozen',4.99,50,'1','images/frozen_ice_cream_bars.jpg');
INSERT INTO fooditem_table VALUES(63,'frozen fruit bars','frozen',3.99,40,'1','images/frozen_fruit_bars.jpg');
INSERT INTO fooditem_table VALUES(64,'frozen yogurt','frozen',5.49,30,'1','images/frozen_yogurt.jpg');
INSERT INTO fooditem_table VALUES(65,'frozen pizza rolls','frozen',4.49,40,'1','images/frozen_pizza_rolls.jpg');
INSERT INTO fooditem_table VALUES(66,'frozen garlic bread','frozen',3.49,40,'1','images/frozen_garlic_bread.jpg');
INSERT INTO fooditem_table VALUES(67,'frozen onion rings','frozen',3.99,30,'1','images/frozen_onion_rings.jpg');
INSERT INTO fooditem_table VALUES(68,'frozen mozzarella sticks','frozen',5.49,30,'1','images/frozen_mozzarella_sticks.jpg');
INSERT INTO fooditem_table VALUES(69,'frozen jalapeno poppers','frozen',5.99,30,'1','images/frozen_jalapeno_poppers.jpg');
INSERT INTO fooditem_table VALUES(70,'frozen corn dogs','frozen',4.99,40,'1','images/frozen_corn_dogs.jpg');
INSERT INTO fooditem_table VALUES(71,'muffins','bakery',2.95,90,'1','images/muffins.jpg');
INSERT INTO fooditem_table VALUES(72,'strawberries','fruit',3.49,100,'1','images/strawberries.jpg');
INSERT INTO fooditem_table VALUES(73,'oranges','fruit',0.99,150,'1','images/oranges.jpg');
INSERT INTO fooditem_table VALUES(74,'pineapple','fruit',2.99,80,'1','images/pineapple.jpg');
INSERT INTO fooditem_table VALUES(75,'mango','fruit',1.49,90,'1','images/mango.jpg');
INSERT INTO fooditem_table VALUES(76,'grapes','fruit',2.79,100,'1','images/grapes.jpg');
INSERT INTO fooditem_table VALUES(77,'pears','fruit',1.99,100,'1','images/pears.jpg');
INSERT INTO fooditem_table VALUES(78,'kiwi','fruit',0.89,120,'1','images/kiwi.jpg');
INSERT INTO fooditem_table VALUES(79,'blueberries','fruit',3.99,60,'1','images/blueberries.jpg');
INSERT INTO fooditem_table VALUES(80,'croissant','bakery',2.50,70,'1','images/croissant.jpg');
INSERT INTO fooditem_table VALUES(81,'donut','bakery',1.25,100,'1','images/donut.jpg');
INSERT INTO fooditem_table VALUES(82,'brownie','bakery',1.75,80,'1','images/brownie.jpg');
INSERT INTO fooditem_table VALUES(83,'cake','bakery',8.99,30,'1','images/cake.jpg');
INSERT INTO fooditem_table VALUES(84,'cupcake','bakery',2.00,90,'1','images/cupcake.jpg');
INSERT INTO fooditem_table VALUES(85,'tart','bakery',3.50,50,'1','images/tart.jpg');
INSERT INTO fooditem_table VALUES(86,'whipped cream','dairy',2.79,50,'1','images/whipped_cream.jpg');
INSERT INTO fooditem_table VALUES(87,'half and half','dairy',1.99,60,'1','images/half_and_half.jpg');
INSERT INTO fooditem_table VALUES(88,'lamb chops','meat',7.99,40,'1','images/lamb_chops.jpg');
INSERT INTO fooditem_table VALUES(89,'turkey breast','meat',6.49,50,'1','images/turkey_breast.jpg');
INSERT INTO fooditem_table VALUES(90,'duck breast','meat',9.99,30,'1','images/duck_breast.jpg');
INSERT INTO fooditem_table VALUES(91,'veal cutlet','meat',8.49,35,'1','images/veal_cutlet.jpg');
INSERT INTO fooditem_table VALUES(92,'bell pepper','vegetables',1.29,80,'1','images/bell_pepper.jpg');
INSERT INTO fooditem_table VALUES(93,'broccoli','vegetables',1.49,70,'1','images/broccoli.jpg');
INSERT INTO fooditem_table VALUES(94,'spinach','vegetables',1.99,60,'1','images/spinach.jpg');
INSERT INTO fooditem_table VALUES(95,'zucchini','vegetables',1.59,90,'1','images/zucchini.jpg');
INSERT INTO fooditem_table VALUES(96,'cucumber','vegetables',0.89,100,'1','images/cucumber.jpg');
INSERT INTO fooditem_table VALUES(97,'cauliflower','vegetables',1.79,50,'1','images/cauliflower.jpg');
INSERT INTO fooditem_table VALUES(98,'mushrooms','vegetables',2.49,75,'1','images/mushrooms.jpg');
INSERT INTO fooditem_table VALUES(99,'quinoa','grains',4.99,50,'1','images/quinoa.jpg');
INSERT INTO fooditem_table VALUES(100,'barley','grains',2.49,60,'1','images/barley.jpg');
INSERT INTO fooditem_table VALUES(101,'oats','grains',3.29,80,'1','images/oats.jpg');
INSERT INTO fooditem_table VALUES(102,'couscous','grains',2.99,70,'1','images/couscous.jpg');
INSERT INTO fooditem_table VALUES(103,'bulgur','grains',3.49,40,'1','images/bulgur.jpg');
INSERT INTO fooditem_table VALUES(104,'millet','grains',3.79,60,'1','images/millet.jpg');
INSERT INTO fooditem_table VALUES(105,'farro','grains',4.49,50,'1','images/farro.jpg');
INSERT INTO fooditem_table VALUES(106,'spelt','grains',4.29,45,'1','images/spelt.jpg');
INSERT INTO fooditem_table VALUES(107,'brown rice','grains',3.99,90,'1','images/brown_rice.jpg');
INSERT INTO fooditem_table VALUES(108,'wild rice','grains',5.49,30,'1','images/wild_rice.jpg');
INSERT INTO fooditem_table VALUES(109,'amaranth','grains',4.19,40,'1','images/amaranth.jpg');
INSERT INTO fooditem_table VALUES(110,'freekeh','grains',4.79,35,'1','images/freekeh.jpg');
INSERT INTO fooditem_table VALUES(111,'granola','breakfast',4.49,80,'1','images/granola.jpg');
INSERT INTO fooditem_table VALUES(112,'waffle mix','breakfast',3.99,60,'1','images/waffle_mix.jpg');
INSERT INTO fooditem_table VALUES(113,'breakfast burrito','breakfast',4.99,40,'1','images/breakfast_burrito.jpg');
INSERT INTO fooditem_table VALUES(114,'sausage links','breakfast',5.49,70,'1','images/sausage_links.jpg');
INSERT INTO fooditem_table VALUES(115,'breakfast sandwich','breakfast',4.79,30,'1','images/breakfast_sandwich.jpg');
INSERT INTO fooditem_table VALUES(116,'bagel with cream cheese','breakfast',3.49,50,'1','images/bagel_with_cream_cheese.jpg');
INSERT INTO fooditem_table VALUES(117,'fruit smoothie mix','breakfast',5.99,40,'1','images/fruit_smoothie_mix.jpg');
INSERT INTO fooditem_table VALUES(118,'protein bar','breakfast',1.99,90,'1','images/protein_bar.jpg');
INSERT INTO fooditem_table VALUES(119,'instant breakfast drink','breakfast',3.49,100,'1','images/instant_breakfast_drink.jpg');
INSERT INTO fooditem_table VALUES(120,'hash browns','breakfast',2.49,60,'1','images/hash_browns.jpg');
INSERT INTO fooditem_table VALUES(121,'poptarts','breakfast',2.79,80,'1','images/poptarts.jpg');
INSERT INTO fooditem_table VALUES(122,'pan dulce','breakfast',1.99,70,'1','images/pan_dulce.jpg');
INSERT INTO fooditem_table VALUES(123,'pretzels','snacks',1.79,80,'1','images/pretzels.jpg');
INSERT INTO fooditem_table VALUES(124,'trail mix','snacks',3.49,50,'1','images/trail_mix.jpg');
INSERT INTO fooditem_table VALUES(125,'popcorn','snacks',2.99,100,'1','images/popcorn.jpg');
INSERT INTO fooditem_table VALUES(126,'crackers','snacks',2.49,90,'1','images/crackers.jpg');
INSERT INTO fooditem_table VALUES(127,'fruit snacks','snacks',2.19,70,'1','images/fruit_snacks.jpg');
INSERT INTO fooditem_table VALUES(128,'cheese puffs','snacks',1.99,60,'1','images/cheese_puffs.jpg');
INSERT INTO fooditem_table VALUES(129,'rice cakes','snacks',2.29,85,'1','images/rice_cakes.jpg');
INSERT INTO fooditem_table VALUES(130,'potato chips','snacks',1.89,110,'1','images/potato_chips.jpg');
INSERT INTO fooditem_table VALUES(131,'orange juice','beverages',2.49,120,'1','images/orange_juice.jpg');
INSERT INTO fooditem_table VALUES(132,'apple juice','beverages',2.29,100,'1','images/apple_juice.jpg');
INSERT INTO fooditem_table VALUES(133,'lemonade','beverages',1.99,150,'1','images/lemonade.jpg');
INSERT INTO fooditem_table VALUES(134,'iced tea','beverages',2.79,130,'1','images/iced_tea.jpg');
INSERT INTO fooditem_table VALUES(135,'energy drink','beverages',2.99,80,'1','images/energy_drink.jpg');
INSERT INTO fooditem_table VALUES(136,'sports drink','beverages',1.89,90,'1','images/sports_drink.jpg');
INSERT INTO fooditem_table VALUES(137,'milkshake','beverages',3.49,60,'1','images/milkshake.jpg');
INSERT INTO fooditem_table VALUES(138,'sparkling water','beverages',1.49,110,'1','images/sparkling_water.jpg');
INSERT INTO fooditem_table VALUES(139,'chocolate cake','desserts',5.99,50,'1','images/chocolate_cake.jpg');
INSERT INTO fooditem_table VALUES(140,'ice cream sandwich','desserts',2.49,80,'1','images/ice_cream_sandwich.jpg');
INSERT INTO fooditem_table VALUES(141,'popsicle','desserts',1.99,100,'1','images/popsicle.jpg');
INSERT INTO fooditem_table VALUES(142,'cheesecake','desserts',6.49,40,'1','images/cheesecake.jpg');
INSERT INTO fooditem_table VALUES(143,'apple pie','desserts',4.99,50,'1','images/apple_pie.jpg');
INSERT INTO fooditem_table VALUES(144,'fruit tart','desserts',4.79,45,'1','images/fruit_tart.jpg');
INSERT INTO fooditem_table VALUES(145,'cannoli','desserts',3.99,60,'1','images/cannoli.jpg');
INSERT INTO fooditem_table VALUES(146,'gelato','desserts',3.50,70,'1','images/gelato.jpg');
INSERT INTO fooditem_table VALUES(147,'frozen yogurt','desserts',2.99,90,'1','images/frozen_yogurt.jpg');
INSERT INTO fooditem_table VALUES(148,'sorbet','desserts',3.49,60,'1','images/sorbet.jpg');
INSERT INTO fooditem_table VALUES(149,'creme brulee','desserts',4.49,40,'1','images/creme_brulee.jpg');
INSERT INTO fooditem_table VALUES(150,'macarons','desserts',3.99,55,'1','images/macarons.jpg');
INSERT INTO fooditem_table VALUES(151,'churros','desserts',2.79,75,'1','images/churros.jpg');
CREATE TABLE order_table (
	order_id INT,
	customer_id VARCHAR(3),
	employee_id VARCHAR(3),
	order_date DATE,
	order_status VARCHAR(9),
	admin_id VARCHAR(3)
);
INSERT INTO order_table VALUES(1,'73','79','12/14/2023','CANCELLED','1');
INSERT INTO order_table VALUES(2,'11','54','9/25/2024','COMPLETED','1');
INSERT INTO order_table VALUES(3,'15','92','6/10/2024','CANCELLED','1');
INSERT INTO order_table VALUES(4,'10','56','12/11/2023','PENDING','1');
INSERT INTO order_table VALUES(5,'87','17','1/17/2024','COMPLETED','1');
INSERT INTO order_table VALUES(6,'91','46','6/15/2024','COMPLETED','1');
INSERT INTO order_table VALUES(7,'85','41','2/29/2024','COMPLETED','1');
INSERT INTO order_table VALUES(8,'34','10','7/12/2024','CANCELLED','1');
INSERT INTO order_table VALUES(9,'53','1','7/29/2024','CANCELLED','1');
INSERT INTO order_table VALUES(10,'7','100','1/13/2024','COMPLETED','1');
INSERT INTO order_table VALUES(11,'57','23','11/26/2023','CANCELLED','1');
INSERT INTO order_table VALUES(12,'7','90','1/31/2024','PENDING','1');
INSERT INTO order_table VALUES(13,'5','74','9/14/2024','COMPLETED','1');
INSERT INTO order_table VALUES(14,'68','85','9/16/2024','COMPLETED','1');
INSERT INTO order_table VALUES(15,'73','47','4/1/2024','COMPLETED','1');
INSERT INTO order_table VALUES(16,'48','73','3/24/2024','PENDING','1');
INSERT INTO order_table VALUES(17,'94','14','8/23/2024','CANCELLED','1');
INSERT INTO order_table VALUES(18,'6','24','4/13/2024','COMPLETED','1');
INSERT INTO order_table VALUES(19,'51','45','9/28/2024','CANCELLED','1');
INSERT INTO order_table VALUES(20,'61','37','6/28/2024','COMPLETED','1');
INSERT INTO order_table VALUES(21,'1','85','5/17/2024','COMPLETED','1');
INSERT INTO order_table VALUES(22,'52','80','2/2/2024','COMPLETED','1');
INSERT INTO order_table VALUES(23,'37','23','12/11/2023','CANCELLED','1');
INSERT INTO order_table VALUES(24,'1','56','12/7/2023','CANCELLED','1');
INSERT INTO order_table VALUES(25,'74','19','3/24/2024','PENDING','1');
INSERT INTO order_table VALUES(26,'80','64','2/23/2024','COMPLETED','1');
INSERT INTO order_table VALUES(27,'8','27','5/5/2024','COMPLETED','1');
INSERT INTO order_table VALUES(28,'85','71','4/24/2024','COMPLETED','1');
INSERT INTO order_table VALUES(29,'78','20','6/3/2024','PENDING','1');
INSERT INTO order_table VALUES(30,'27','52','3/10/2024','PENDING','1');
INSERT INTO order_table VALUES(31,'47','74','2/22/2024','COMPLETED','1');
INSERT INTO order_table VALUES(32,'26','41','3/4/2024','COMPLETED','1');
INSERT INTO order_table VALUES(33,'4','34','11/10/2023','PENDING','1');
INSERT INTO order_table VALUES(34,'35','47','5/19/2024','PENDING','1');
INSERT INTO order_table VALUES(35,'69','81','8/24/2024','COMPLETED','1');
INSERT INTO order_table VALUES(36,'75','46','4/5/2024','PENDING','1');
INSERT INTO order_table VALUES(37,'21','38','8/2/2024','COMPLETED','1');
INSERT INTO order_table VALUES(38,'92','35','5/16/2024','PENDING','1');
INSERT INTO order_table VALUES(39,'82','71','12/22/2023','COMPLETED','1');
INSERT INTO order_table VALUES(40,'46','65','10/12/2024','PENDING','1');
INSERT INTO order_table VALUES(41,'22','8','12/11/2023','COMPLETED','1');
INSERT INTO order_table VALUES(42,'5','24','7/4/2024','CANCELLED','1');
INSERT INTO order_table VALUES(43,'47','15','7/4/2024','COMPLETED','1');
INSERT INTO order_table VALUES(44,'47','87','3/30/2024','PENDING','1');
INSERT INTO order_table VALUES(45,'96','53','1/11/2024','CANCELLED','1');
INSERT INTO order_table VALUES(46,'26','69','5/27/2024','CANCELLED','1');
INSERT INTO order_table VALUES(47,'13','39','7/21/2024','PENDING','1');
INSERT INTO order_table VALUES(48,'71','35','8/27/2024','CANCELLED','1');
INSERT INTO order_table VALUES(49,'77','91','9/19/2024','PENDING','1');
INSERT INTO order_table VALUES(50,'98','74','3/2/2024','COMPLETED','1');
INSERT INTO order_table VALUES(51,'75','2','9/7/2024','COMPLETED','1');
INSERT INTO order_table VALUES(52,'10','1','9/15/2024','PENDING','1');
INSERT INTO order_table VALUES(53,'33','49','3/17/2024','COMPLETED','1');
INSERT INTO order_table VALUES(54,'64','86','2/24/2024','PENDING','1');
INSERT INTO order_table VALUES(55,'13','54','10/26/2024','CANCELLED','1');
INSERT INTO order_table VALUES(56,'84','70','7/26/2024','PENDING','1');
INSERT INTO order_table VALUES(57,'22','40','8/29/2024','CANCELLED','1');
INSERT INTO order_table VALUES(58,'81','81','5/14/2024','CANCELLED','1');
INSERT INTO order_table VALUES(59,'1','25','12/14/2023','COMPLETED','1');
INSERT INTO order_table VALUES(60,'82','21','2/12/2024','COMPLETED','1');
INSERT INTO order_table VALUES(61,'90','13','11/12/2023','CANCELLED','1');
INSERT INTO order_table VALUES(62,'82','71','4/10/2024','CANCELLED','1');
INSERT INTO order_table VALUES(63,'55','12','3/7/2024','COMPLETED','1');
INSERT INTO order_table VALUES(64,'43','38','7/25/2024','CANCELLED','1');
INSERT INTO order_table VALUES(65,'7','36','11/25/2023','CANCELLED','1');
INSERT INTO order_table VALUES(66,'3','76','12/30/2023','COMPLETED','1');
INSERT INTO order_table VALUES(67,'10','32','7/18/2024','CANCELLED','1');
INSERT INTO order_table VALUES(68,'64','4','7/30/2024','CANCELLED','1');
INSERT INTO order_table VALUES(69,'93','65','7/28/2024','CANCELLED','1');
INSERT INTO order_table VALUES(70,'11','63','7/23/2024','PENDING','1');
INSERT INTO order_table VALUES(71,'3','9','7/26/2024','PENDING','1');
INSERT INTO order_table VALUES(72,'39','90','8/8/2024','PENDING','1');
INSERT INTO order_table VALUES(73,'6','78','8/15/2024','PENDING','1');
INSERT INTO order_table VALUES(74,'20','84','1/4/2024','COMPLETED','1');
INSERT INTO order_table VALUES(75,'37','75','2/13/2024','CANCELLED','1');
INSERT INTO order_table VALUES(76,'4','53','5/26/2024','PENDING','1');
INSERT INTO order_table VALUES(77,'6','83','9/1/2024','CANCELLED','1');
INSERT INTO order_table VALUES(78,'96','27','5/15/2024','CANCELLED','1');
INSERT INTO order_table VALUES(79,'27','42','5/22/2024','CANCELLED','1');
INSERT INTO order_table VALUES(80,'99','27','11/11/2023','PENDING','1');
INSERT INTO order_table VALUES(81,'57','66','5/7/2024','COMPLETED','1');
INSERT INTO order_table VALUES(82,'49','98','9/23/2024','CANCELLED','1');
INSERT INTO order_table VALUES(83,'81','54','7/12/2024','CANCELLED','1');
INSERT INTO order_table VALUES(84,'51','41','4/15/2024','COMPLETED','1');
INSERT INTO order_table VALUES(85,'57','43','8/15/2024','CANCELLED','1');
INSERT INTO order_table VALUES(86,'71','35','1/21/2024','COMPLETED','1');
INSERT INTO order_table VALUES(87,'47','44','12/20/2023','PENDING','1');
INSERT INTO order_table VALUES(88,'71','62','2/24/2024','CANCELLED','1');
INSERT INTO order_table VALUES(89,'15','24','11/27/2023','COMPLETED','1');
INSERT INTO order_table VALUES(90,'97','32','4/10/2024','COMPLETED','1');
INSERT INTO order_table VALUES(91,'26','45','1/11/2024','PENDING','1');
INSERT INTO order_table VALUES(92,'78','3','4/27/2024','CANCELLED','1');
INSERT INTO order_table VALUES(93,'95','29','11/12/2023','CANCELLED','1');
INSERT INTO order_table VALUES(94,'66','65','9/25/2024','COMPLETED','1');
INSERT INTO order_table VALUES(95,'66','59','12/12/2023','CANCELLED','1');
INSERT INTO order_table VALUES(96,'9','79','12/13/2023','PENDING','1');
INSERT INTO order_table VALUES(97,'98','32','12/4/2023','CANCELLED','1');
INSERT INTO order_table VALUES(98,'26','51','4/8/2024','COMPLETED','1');
INSERT INTO order_table VALUES(99,'26','70','3/23/2024','COMPLETED','1');
INSERT INTO order_table VALUES(100,'15','89','7/15/2024','CANCELLED','1');
CREATE TABLE pantrylocation_table (
	location_id INT,
	location_name VARCHAR(19),
	pantrylocation_section VARCHAR(15)
);
INSERT INTO pantrylocation_table VALUES(1,'Dairy Aisle','dairy');
INSERT INTO pantrylocation_table VALUES(2,'Meat Aisle','meat');
INSERT INTO pantrylocation_table VALUES(3,'Beverage Aisle','beverages');
INSERT INTO pantrylocation_table VALUES(4,'Meat Freezer','meat');
INSERT INTO pantrylocation_table VALUES(5,'Beverage Coolers','beverages');
INSERT INTO pantrylocation_table VALUES(6,'Bakery Section','bakery');
INSERT INTO pantrylocation_table VALUES(7,'Snack Aisle','snacks');
INSERT INTO pantrylocation_table VALUES(8,'Dairy Section','dairy');
INSERT INTO pantrylocation_table VALUES(9,'Household Supplies','household items');
INSERT INTO pantrylocation_table VALUES(10,'Produce Section','produce');
INSERT INTO pantrylocation_table VALUES(11,'Meat Freezer 2','meat');
INSERT INTO pantrylocation_table VALUES(12,'Produce Section 2','produce');
INSERT INTO pantrylocation_table VALUES(13,'Bakery Corner','bakery');
INSERT INTO pantrylocation_table VALUES(14,'Snack Shelves','snacks');
INSERT INTO pantrylocation_table VALUES(15,'Canned Goods Aisle','canned goods');
INSERT INTO pantrylocation_table VALUES(16,'Paper Goods Aisle','household items');
INSERT INTO pantrylocation_table VALUES(17,'Bakery Aisle','bakery');
INSERT INTO pantrylocation_table VALUES(18,'Frozen Foods Aisle','frozen foods');
INSERT INTO pantrylocation_table VALUES(19,'Bulk Foods Section','bakery');
INSERT INTO pantrylocation_table VALUES(20,'Deli Counter','deli');
INSERT INTO pantrylocation_table VALUES(21,'Canned Goods Section','canned goods');
INSERT INTO pantrylocation_table VALUES(22,'Produce Shelves','produce');
INSERT INTO pantrylocation_table VALUES(23,'Frozen Produce','frozen foods');
INSERT INTO pantrylocation_table VALUES(24,'Bakery Aisle 2','bakery');
INSERT INTO pantrylocation_table VALUES(25,'Bulk Canned Goods','canned goods');
INSERT INTO pantrylocation_table VALUES(26,'Health Aisle','health and wellness');
INSERT INTO pantrylocation_table VALUES(27,'International Foods','international');
INSERT INTO pantrylocation_table VALUES(28,'Frozen Fruits','produce');
INSERT INTO pantrylocation_table VALUES(29,'Frozen Paper Goods','frozen foods');
INSERT INTO pantrylocation_table VALUES(30,'Fresh Produce','produce');
INSERT INTO pantrylocation_table VALUES(31,'Cold Beverages','beverages');
INSERT INTO pantrylocation_table VALUES(32,'Snack Supplies','snacks');
INSERT INTO pantrylocation_table VALUES(33,'Bakery Showcase','bakery');
INSERT INTO pantrylocation_table VALUES(34,'Frozen Supplies','frozen foods');
INSERT INTO pantrylocation_table VALUES(35,'Canned Paper Goods','household items');
INSERT INTO pantrylocation_table VALUES(36,'Household Supplies','household items');
INSERT INTO pantrylocation_table VALUES(37,'Deli Specialty','deli');
INSERT INTO pantrylocation_table VALUES(38,'Deli Health','deli');
INSERT INTO pantrylocation_table VALUES(39,'Specialty Beverages','beverages');
INSERT INTO pantrylocation_table VALUES(40,'Specialty International','international');
INSERT INTO pantrylocation_table VALUES(41,'Gluten-Free Snacks','snacks');
INSERT INTO pantrylocation_table VALUES(42,'Deli Care','deli');
INSERT INTO pantrylocation_table VALUES(43,'Household Papers','household items');
INSERT INTO pantrylocation_table VALUES(44,'Deli Snacks','deli');
INSERT INTO pantrylocation_table VALUES(45,'Beverage Dairy','dairy');
INSERT INTO pantrylocation_table VALUES(46,'Canned International','canned goods');
INSERT INTO pantrylocation_table VALUES(47,'Frozen Specialty','frozen foods');
INSERT INTO pantrylocation_table VALUES(48,'Frozen Health','frozen foods');
INSERT INTO pantrylocation_table VALUES(49,'Beverage Cleaners','beverages');
INSERT INTO pantrylocation_table VALUES(50,'Household Snacks','snacks');
INSERT INTO pantrylocation_table VALUES(51,'Baby Meat Care','meat');
INSERT INTO pantrylocation_table VALUES(52,'Baby Dairy','dairy');
INSERT INTO pantrylocation_table VALUES(53,'Bakery Health','bakery');
INSERT INTO pantrylocation_table VALUES(54,'Deli Bulk','deli');
INSERT INTO pantrylocation_table VALUES(55,'Canned Bulk','canned goods');
INSERT INTO pantrylocation_table VALUES(56,'Specialty Meats','meat');
INSERT INTO pantrylocation_table VALUES(57,'Frozen Deli','deli');
INSERT INTO pantrylocation_table VALUES(58,'Produce Snacks','snacks');
INSERT INTO pantrylocation_table VALUES(59,'Dairy Snacks','dairy');
INSERT INTO pantrylocation_table VALUES(60,'Frozen Canned Goods','canned goods');
INSERT INTO pantrylocation_table VALUES(61,'Frozen Cleaners','frozen foods');
INSERT INTO pantrylocation_table VALUES(62,'Paper Goods Canned','canned goods');
INSERT INTO pantrylocation_table VALUES(63,'Dairy International','dairy');
INSERT INTO pantrylocation_table VALUES(64,'Bakery Organic','bakery');
INSERT INTO pantrylocation_table VALUES(65,'Household Frozen','frozen foods');
INSERT INTO pantrylocation_table VALUES(66,'Snack Freezers','snacks');
INSERT INTO pantrylocation_table VALUES(67,'Gluten-Free Goods','snacks');
INSERT INTO pantrylocation_table VALUES(68,'Bakery Baby Care','bakery');
INSERT INTO pantrylocation_table VALUES(69,'Produce Bulk','produce');
INSERT INTO pantrylocation_table VALUES(70,'Meat Special','meat');
INSERT INTO pantrylocation_table VALUES(71,'Gluten-Free Meats','meat');
INSERT INTO pantrylocation_table VALUES(72,'Beverage Cleaners 2','beverages');
INSERT INTO pantrylocation_table VALUES(73,'Dairy Paper Goods','dairy');
INSERT INTO pantrylocation_table VALUES(74,'Dairy Freezer','frozen foods');
INSERT INTO pantrylocation_table VALUES(75,'Bakery Freezer','frozen foods');
INSERT INTO pantrylocation_table VALUES(76,'Deli Bulk Foods','deli');
INSERT INTO pantrylocation_table VALUES(77,'Paper Goods Canned','canned goods');
INSERT INTO pantrylocation_table VALUES(78,'Deli Beverages','deli');
INSERT INTO pantrylocation_table VALUES(79,'Meat Personal Care','meat');
INSERT INTO pantrylocation_table VALUES(80,'Frozen Bulk','frozen foods');
INSERT INTO pantrylocation_table VALUES(81,'Canned Bakery Goods','bakery');
INSERT INTO pantrylocation_table VALUES(82,'Household Meat','meat');
INSERT INTO pantrylocation_table VALUES(83,'Household Deli','deli');
INSERT INTO pantrylocation_table VALUES(84,'Frozen Aisle','frozen foods');
INSERT INTO pantrylocation_table VALUES(85,'Snack Baby Care','snacks');
INSERT INTO pantrylocation_table VALUES(86,'Meat Specialty','meat');
INSERT INTO pantrylocation_table VALUES(87,'Baby Canned Goods','canned goods');
INSERT INTO pantrylocation_table VALUES(88,'Meat Section','meat');
INSERT INTO pantrylocation_table VALUES(89,'Meat Beverages','meat');
INSERT INTO pantrylocation_table VALUES(90,'Dairy Snacks','dairy');
INSERT INTO pantrylocation_table VALUES(91,'International Bakery','bakery');
INSERT INTO pantrylocation_table VALUES(92,'Meat Snacks','snacks');
INSERT INTO pantrylocation_table VALUES(93,'Beverages Section','beverages');
INSERT INTO pantrylocation_table VALUES(94,'Specialty Beverages','beverages');
INSERT INTO pantrylocation_table VALUES(95,'Dairy Cleaners','dairy');
INSERT INTO pantrylocation_table VALUES(96,'Frozen Beverages','beverages');
INSERT INTO pantrylocation_table VALUES(97,'Dairy Freezer','dairy');
INSERT INTO pantrylocation_table VALUES(98,'Specialty Deli','deli');
INSERT INTO pantrylocation_table VALUES(99,'Canned Paper Goods','canned goods');
INSERT INTO pantrylocation_table VALUES(100,'Organic Bakery','bakery');
CREATE TABLE orderdetail_table (
    order_detail_id INT,
    order_id INT,
    food_item_id INT,
    orderdetail_quantity INT
);
INSERT INTO orderdetail_table VALUES(1,1,1,9);
INSERT INTO orderdetail_table VALUES(2,2,2,1);
INSERT INTO orderdetail_table VALUES(3,3,3,1);
INSERT INTO orderdetail_table VALUES(4,4,4,4);
INSERT INTO orderdetail_table VALUES(5,5,5,7);
INSERT INTO orderdetail_table VALUES(6,6,6,10);
INSERT INTO orderdetail_table VALUES(7,7,7,7);
INSERT INTO orderdetail_table VALUES(8,8,8,8);
INSERT INTO orderdetail_table VALUES(9,9,9,4);
INSERT INTO orderdetail_table VALUES(10,10,10,5);
INSERT INTO orderdetail_table VALUES(11,11,11,9);
INSERT INTO orderdetail_table VALUES(12,12,12,5);
INSERT INTO orderdetail_table VALUES(13,13,13,4);
INSERT INTO orderdetail_table VALUES(14,14,14,7);
INSERT INTO orderdetail_table VALUES(15,15,15,10);
INSERT INTO orderdetail_table VALUES(16,16,16,10);
INSERT INTO orderdetail_table VALUES(17,17,17,10);
INSERT INTO orderdetail_table VALUES(18,18,18,2);
INSERT INTO orderdetail_table VALUES(19,19,19,3);
INSERT INTO orderdetail_table VALUES(20,20,20,9);
INSERT INTO orderdetail_table VALUES(21,21,21,4);
INSERT INTO orderdetail_table VALUES(22,22,22,5);
INSERT INTO orderdetail_table VALUES(23,23,23,9);
INSERT INTO orderdetail_table VALUES(24,24,24,4);
INSERT INTO orderdetail_table VALUES(25,25,25,10);
INSERT INTO orderdetail_table VALUES(26,26,26,6);
INSERT INTO orderdetail_table VALUES(27,27,27,6);
INSERT INTO orderdetail_table VALUES(28,28,28,9);
INSERT INTO orderdetail_table VALUES(29,29,29,10);
INSERT INTO orderdetail_table VALUES(30,30,30,2);
INSERT INTO orderdetail_table VALUES(31,31,31,4);
INSERT INTO orderdetail_table VALUES(32,32,32,7);
INSERT INTO orderdetail_table VALUES(33,33,33,4);
INSERT INTO orderdetail_table VALUES(34,34,34,8);
INSERT INTO orderdetail_table VALUES(35,35,35,7);
INSERT INTO orderdetail_table VALUES(36,36,36,7);
INSERT INTO orderdetail_table VALUES(37,37,37,1);
INSERT INTO orderdetail_table VALUES(38,38,38,9);
INSERT INTO orderdetail_table VALUES(39,39,39,7);
INSERT INTO orderdetail_table VALUES(40,40,40,9);
INSERT INTO orderdetail_table VALUES(41,41,41,5);
INSERT INTO orderdetail_table VALUES(42,42,42,4);
INSERT INTO orderdetail_table VALUES(43,43,43,6);
INSERT INTO orderdetail_table VALUES(44,44,44,2);
INSERT INTO orderdetail_table VALUES(45,45,45,8);
INSERT INTO orderdetail_table VALUES(46,46,46,7);
INSERT INTO orderdetail_table VALUES(47,47,47,6);
INSERT INTO orderdetail_table VALUES(48,48,48,5);
INSERT INTO orderdetail_table VALUES(49,49,49,7);
INSERT INTO orderdetail_table VALUES(50,50,50,7);
INSERT INTO orderdetail_table VALUES(51,51,51,2);
INSERT INTO orderdetail_table VALUES(52,52,52,2);
INSERT INTO orderdetail_table VALUES(53,53,53,4);
INSERT INTO orderdetail_table VALUES(54,54,54,6);
INSERT INTO orderdetail_table VALUES(55,55,55,5);
INSERT INTO orderdetail_table VALUES(56,56,56,3);
INSERT INTO orderdetail_table VALUES(57,57,57,5);
INSERT INTO orderdetail_table VALUES(58,58,58,7);
INSERT INTO orderdetail_table VALUES(59,59,59,9);
INSERT INTO orderdetail_table VALUES(60,60,60,5);
INSERT INTO orderdetail_table VALUES(61,61,61,4);
INSERT INTO orderdetail_table VALUES(62,62,62,3);
INSERT INTO orderdetail_table VALUES(63,63,63,2);
INSERT INTO orderdetail_table VALUES(64,64,64,9);
INSERT INTO orderdetail_table VALUES(65,65,65,8);
INSERT INTO orderdetail_table VALUES(66,66,66,10);
INSERT INTO orderdetail_table VALUES(67,67,67,1);
INSERT INTO orderdetail_table VALUES(68,68,68,6);
INSERT INTO orderdetail_table VALUES(69,69,69,7);
INSERT INTO orderdetail_table VALUES(70,70,70,5);
INSERT INTO orderdetail_table VALUES(71,71,71,10);
INSERT INTO orderdetail_table VALUES(72,72,72,5);
INSERT INTO orderdetail_table VALUES(73,73,73,4);
INSERT INTO orderdetail_table VALUES(74,74,74,8);
INSERT INTO orderdetail_table VALUES(75,75,75,5);
INSERT INTO orderdetail_table VALUES(76,76,76,2);
INSERT INTO orderdetail_table VALUES(77,77,77,7);
INSERT INTO orderdetail_table VALUES(78,78,78,9);
INSERT INTO orderdetail_table VALUES(79,79,79,1);
INSERT INTO orderdetail_table VALUES(80,80,80,7);
INSERT INTO orderdetail_table VALUES(81,81,81,6);
INSERT INTO orderdetail_table VALUES(82,82,82,10);
INSERT INTO orderdetail_table VALUES(83,83,83,10);
INSERT INTO orderdetail_table VALUES(84,84,84,9);
INSERT INTO orderdetail_table VALUES(85,85,85,4);
INSERT INTO orderdetail_table VALUES(86,86,86,3);
INSERT INTO orderdetail_table VALUES(87,87,87,9);
INSERT INTO orderdetail_table VALUES(88,88,88,2);
INSERT INTO orderdetail_table VALUES(89,89,89,7);
INSERT INTO orderdetail_table VALUES(90,90,90,9);
INSERT INTO orderdetail_table VALUES(91,91,91,6);
INSERT INTO orderdetail_table VALUES(92,92,92,1);
INSERT INTO orderdetail_table VALUES(93,93,93,2);
INSERT INTO orderdetail_table VALUES(94,94,94,2);
INSERT INTO orderdetail_table VALUES(95,95,95,7);
INSERT INTO orderdetail_table VALUES(96,96,96,4);
INSERT INTO orderdetail_table VALUES(97,97,97,5);
INSERT INTO orderdetail_table VALUES(98,98,98,6);
INSERT INTO orderdetail_table VALUES(99,99,99,1);
INSERT INTO orderdetail_table VALUES(100,100,100,3);
CREATE TABLE fooditemlocation_table (
    food_item_id INT,
    location_id INT
);
INSERT INTO fooditemlocation_table VALUES(1,1);
INSERT INTO fooditemlocation_table VALUES(2,2);
INSERT INTO fooditemlocation_table VALUES(3,7);
INSERT INTO fooditemlocation_table VALUES(4,10);
INSERT INTO fooditemlocation_table VALUES(5,4);
INSERT INTO fooditemlocation_table VALUES(6,45);
INSERT INTO fooditemlocation_table VALUES(7,3);
INSERT INTO fooditemlocation_table VALUES(8,22);
INSERT INTO fooditemlocation_table VALUES(9,49);
INSERT INTO fooditemlocation_table VALUES(10,23);
INSERT INTO fooditemlocation_table VALUES(11,8);
INSERT INTO fooditemlocation_table VALUES(12,1);
INSERT INTO fooditemlocation_table VALUES(13,17);
INSERT INTO fooditemlocation_table VALUES(14,22);
INSERT INTO fooditemlocation_table VALUES(15,17);
INSERT INTO fooditemlocation_table VALUES(16,52);
INSERT INTO fooditemlocation_table VALUES(17,6);
INSERT INTO fooditemlocation_table VALUES(18,53);
INSERT INTO fooditemlocation_table VALUES(19,63);
INSERT INTO fooditemlocation_table VALUES(20,22);
INSERT INTO fooditemlocation_table VALUES(21,8);
INSERT INTO fooditemlocation_table VALUES(22,4);
INSERT INTO fooditemlocation_table VALUES(23,10);
INSERT INTO fooditemlocation_table VALUES(24,31);
INSERT INTO fooditemlocation_table VALUES(25,19);
INSERT INTO fooditemlocation_table VALUES(26,19);
INSERT INTO fooditemlocation_table VALUES(27,64);
INSERT INTO fooditemlocation_table VALUES(28,22);
INSERT INTO fooditemlocation_table VALUES(29,8);
INSERT INTO fooditemlocation_table VALUES(30,22);
INSERT INTO fooditemlocation_table VALUES(31,22);
INSERT INTO fooditemlocation_table VALUES(32,72);
INSERT INTO fooditemlocation_table VALUES(33,8);
INSERT INTO fooditemlocation_table VALUES(34,7);
INSERT INTO fooditemlocation_table VALUES(35,33);
INSERT INTO fooditemlocation_table VALUES(36,19);
INSERT INTO fooditemlocation_table VALUES(37,1);
INSERT INTO fooditemlocation_table VALUES(38,7);
INSERT INTO fooditemlocation_table VALUES(39,17);
INSERT INTO fooditemlocation_table VALUES(40,49);
INSERT INTO fooditemlocation_table VALUES(41,2);
INSERT INTO fooditemlocation_table VALUES(42,33);
INSERT INTO fooditemlocation_table VALUES(43,19);
INSERT INTO fooditemlocation_table VALUES(44,22);
INSERT INTO fooditemlocation_table VALUES(45,6);
INSERT INTO fooditemlocation_table VALUES(46,19);
INSERT INTO fooditemlocation_table VALUES(47,52);
INSERT INTO fooditemlocation_table VALUES(48,4);
INSERT INTO fooditemlocation_table VALUES(49,7);
INSERT INTO fooditemlocation_table VALUES(50,1);
INSERT INTO fooditemlocation_table VALUES(51,10);
INSERT INTO fooditemlocation_table VALUES(52,19);
INSERT INTO fooditemlocation_table VALUES(53,53);
INSERT INTO fooditemlocation_table VALUES(54,8);
INSERT INTO fooditemlocation_table VALUES(55,1);
INSERT INTO fooditemlocation_table VALUES(56,22);
INSERT INTO fooditemlocation_table VALUES(57,7);
INSERT INTO fooditemlocation_table VALUES(58,3);
INSERT INTO fooditemlocation_table VALUES(59,8);
INSERT INTO fooditemlocation_table VALUES(60,53);
INSERT INTO fooditemlocation_table VALUES(61,22);
INSERT INTO fooditemlocation_table VALUES(62,8);
INSERT INTO fooditemlocation_table VALUES(63,22);
INSERT INTO fooditemlocation_table VALUES(64,22);
INSERT INTO fooditemlocation_table VALUES(65,17);
INSERT INTO fooditemlocation_table VALUES(66,53);
INSERT INTO fooditemlocation_table VALUES(67,1);
INSERT INTO fooditemlocation_table VALUES(68,8);
INSERT INTO fooditemlocation_table VALUES(69,22);
INSERT INTO fooditemlocation_table VALUES(70,52);
INSERT INTO fooditemlocation_table VALUES(71,3);
COMMIT;


.print "----------------------------------------------------"
.print "Query 1: Retrieve customer names and their emails"
SELECT customer_name AS "Customer Name", customer_email AS "Email" FROM customer_table;

.print "----------------------------------------------------"
.print "Query 2: Customer with the Most Orders"
SELECT customer_name AS "Customer Name", COUNT(order_id) AS "Order Count"
FROM customer_table c
JOIN order_table o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY "Order Count" DESC
LIMIT 1;

.print "----------------------------------------------------"
.print "Query 3: Retrieve a count of unique customers associated with each employee"
SELECT e.employee_name AS "Employee", COUNT(DISTINCT o.customer_id) AS "Customer Count"
FROM employee_table e
JOIN order_table o ON e.employee_id = o.employee_id
GROUP BY e.employee_name;

.print "----------------------------------------------------"
.print "Query 4: Retrieve a list of unique customer names with the count of orders they have placed"
SELECT c.customer_name AS "Customer", COUNT(o.order_id) AS "Number of Orders"
FROM order_table o
JOIN customer_table c ON o.customer_id = c.customer_id
GROUP BY c.customer_name;

.print "----------------------------------------------------"
.print "Query 5: Retrieve a summary count of different categories of food items in stock"
SELECT food_category AS "Category", COUNT(*) AS "Items in Stock"
FROM fooditem_table
WHERE food_stockquantity > 0
GROUP BY food_category;

.print "----------------------------------------------------"
.print "Query 6: Retrieve all food items with their location (limited fields for readability)"
SELECT DISTINCT f.food_name AS "Food Item", l.location_name AS "Location", l.pantrylocation_section AS "Section"
FROM fooditem_table f
JOIN fooditemlocation_table fl ON f.food_item_id = fl.food_item_id
JOIN pantrylocation_table l ON fl.location_id = l.location_id;

.print "----------------------------------------------------"
.print "Query 7: Retrieve orders placed by a specific customer (Dulce Butting) with order date and status"
SELECT o.order_id AS "Order ID", o.order_date AS "Date", o.order_status AS "Status"
FROM order_table o
JOIN customer_table c ON o.customer_id = c.customer_id
WHERE c.customer_name = 'Dulce Butting';

.print "----------------------------------------------------"
.print "Query 8: Count the total number of orders"
SELECT COUNT(*) AS "Total Orders" FROM order_table;

.print "----------------------------------------------------"
.print "Query 9: Calculate the total stock quantity of all food items"
SELECT SUM(food_stockquantity) AS "Total Stock Quantity" FROM fooditem_table;

.print "----------------------------------------------------"
.print "Query 10: List the top 3 employees with the most canceled orders"
SELECT e.employee_name AS "Employee", COUNT(o.order_id) AS "Canceled Orders"
FROM employee_table e
JOIN order_table o ON e.employee_id = o.employee_id
WHERE o.order_status = 'CANCELLED'
GROUP BY e.employee_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 3;

.print "----------------------------------------------------"
.print "Query 11: Top 5 most expensive items in stock"
SELECT food_name AS "Food Item", food_price AS "Price"
FROM fooditem_table
ORDER BY food_price DESC
LIMIT 5;

.print "----------------------------------------------------"
.print "Query 12: Retrieve order details for a specific order (Order ID = 1)"
SELECT DISTINCT f.food_name AS "Food Item", od.orderdetail_quantity AS "Quantity"
FROM orderdetail_table od
JOIN fooditem_table f ON od.food_item_id = f.food_item_id
WHERE od.order_id = 1;

.print "----------------------------------------------------"
.print "Query 13: Update the stock quantity of a food item"
UPDATE fooditem_table SET food_stockquantity = food_stockquantity - 5 WHERE food_item_id = 1;

.print "----------------------------------------------------"
.print "Query 14: Update an order status to 'COMPLETED' (Order ID = 2)"
UPDATE order_table SET order_status = 'COMPLETED' WHERE order_id = 2;

.print "----------------------------------------------------"
.print "Query: Count the number of items in Order Number 9"
SELECT COUNT(*) AS item_count 
FROM orderdetail_table 
WHERE order_id = 9;

.print "----------------------------------------------------"
.print "Query 16: Retrieve the count of orders processed by each employee"
SELECT e.employee_name AS "Employee", COUNT(o.order_id) AS "Orders Processed"
FROM order_table o
JOIN employee_table e ON o.employee_id = e.employee_id
GROUP BY e.employee_name;

.print "----------------------------------------------------"
.print "Query 17: Count the number of orders by each order status"
SELECT order_status AS "Status", COUNT(*) AS "Status Count"
FROM order_table
GROUP BY order_status;

.print "----------------------------------------------------"
.print "Query 18: List food items with low stock (less than 40)"
SELECT food_name AS "Food Item", food_stockquantity AS "Quantity"
FROM fooditem_table
WHERE food_stockquantity < 40;

.print "----------------------------------------------------"
.print "Query 19: Retrieve the locations where 'Bread' is stored"
SELECT DISTINCT l.location_name AS "Location", l.pantrylocation_section AS "Section"
FROM fooditem_table f
JOIN fooditemlocation_table fl ON f.food_item_id = fl.food_item_id
JOIN pantrylocation_table l ON fl.location_id = l.location_id
WHERE f.food_name = 'bread';

.print "----------------------------------------------------"
.print "Query 20: Add a new food item (Orange Juice)"
INSERT INTO fooditem_table (food_item_id, food_name, food_category, food_price, food_stockquantity, admin_id)
VALUES (4, 'Pineapple Juice', 'beverages', 3.50, 20, 1);

.print "----------------------------------------------------"
.print "Query 21: List the top 3 customers with the most canceled orders"
SELECT c.customer_name AS "Customer", COUNT(o.order_id) AS "Canceled Orders"
FROM customer_table c
JOIN order_table o ON c.customer_id = o.customer_id
WHERE o.order_status = 'CANCELLED'
GROUP BY c.customer_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 3;

.print "----------------------------------------------------"
.print "Query 23: Top 5 most popular items by order count"
SELECT f.food_name AS "Food Item", COUNT(o.order_id) AS "Order Count"
FROM fooditem_table f
JOIN orderdetail_table od ON f.food_item_id = od.food_item_id
JOIN order_table o ON od.order_id = o.order_id
GROUP BY f.food_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 5;

.print "----------------------------------------------------"
.print "Query 24: Total revenue generated by each food category"
SELECT f.food_category AS "Category", SUM(f.food_price * od.orderdetail_quantity) AS "Total Revenue"
FROM fooditem_table f
JOIN orderdetail_table od ON f.food_item_id = od.food_item_id
GROUP BY f.food_category
ORDER BY "Total Revenue" DESC;

.print "----------------------------------------------------"
.print "Query 25: Top 5 customers with the most frequent orders"
SELECT c.customer_name AS "Customer", COUNT(o.order_id) AS "Order Frequency"
FROM customer_table c
JOIN order_table o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 5;

.print "----------------------------------------------------"
.print "Query 26: Total quantity of each item ordered (high demand forecasting)"
SELECT f.food_name AS "Food Item", SUM(od.orderdetail_quantity) AS "Total Quantity Ordered"
FROM fooditem_table f
JOIN orderdetail_table od ON f.food_item_id = od.food_item_id
GROUP BY f.food_name
ORDER BY "Total Quantity Ordered" DESC;
