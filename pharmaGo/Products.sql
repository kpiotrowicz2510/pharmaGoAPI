BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Products` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Price`	REAL NOT NULL,
	`Name`	TEXT,
	`Description`	TEXT,
	`AvailableAmount`	INTEGER NOT NULL,
	`Image`	TEXT
);
INSERT INTO `Products` VALUES (1,5.0,'Paracetamol','Paracetamol 10 tabletek',5,'https://static5.i-apteka.pl/pol_pm_PARACETAMOL-500mg-x-10-tabletek-29837_2.jpg');
INSERT INTO `Products` VALUES (2,8.99,'2KC 12 szt.','Tabletki.
Skład:
witamina C (kwas askorbinowy)
glukoza
kwas bursztynowy
kwas fumarowy
glutaminian sodu',10,'https://cdn.doz.pl/image/product/159795/scale/350x350');
INSERT INTO `Products` VALUES (3,3.99,'BoboVita, Kleik ryżowy','Po 4 miesiacu. 160g.
Kleik ryżowy stanowi pełnowartościowy, łagodny ryżowo-mleczny posiłek.',8,'https://media.nutriciastatic.com/uploads/media/59a002eb3415c/kleik-ryzowy.png');
INSERT INTO `Products` VALUES (4,29.9,'Olimp, Vita-Min Multiple Sport','60 kapsulek.
Vita-Min Multiple Sport to dwufazowy witaminowo-mineralny suplement diety dla osób dorosłych, w szczególności sportowców.',3,'https://s3.sbodypak.pl/img/p/6/0/7/1/6071-large_default.jpg');
INSERT INTO `Products` VALUES (5,11.9,'Magne B6, 50 tabletek','Wskazania: uzupełnienie niedoborów magnezu w organizmie.',32,'https://image.ceneostatic.pl/data/products/4775867/f-magne-b6-50-tabl.jpg');
INSERT INTO `Products` VALUES (6,7.9,'4 Lacti Baby','4 Lacti BABY to suplement diety w postaci doustnej zawiesiny, zawierający probiotyczny szczep Lactobacillus rhamnosus GG (ATCC 53103).',6,'https://static.aptekagemini.pl/media/products/b_/0_/0_/b00a014be79e7aea37d88616edbef06e/images/thumbnail/large_1525161918apteka_internetowa_gemini_4_lacti_baby_krople_5ml.jpg');
INSERT INTO `Products` VALUES (7,4.35,'Alantan Plus, krem','Wskazania: leczenie różnego rodzaju ran, oparzeń, pielęgnacja sutków podczas karmienia piersią, zapobieganie odparzeniom u niemowląt',24,'https://cdn.doz.pl/image/product/149627/scale/350x350');
INSERT INTO `Products` VALUES (8,2.9,'Allertec WZF 10mg','Wskazania: łagodzenie objawów dotyczących nosa i oczu, związanych z sezonowym i przewlekłym alergicznym zapaleniem błony śluzowej nosa (takich jak zatkany nos, duża ilość wodnistej wydzieliny z nosa, częste kichanie, zaczerwienienie oczu, łzawienie, swędzenie oczu); łagodzenie objawów przewlekłej idiopatycznej pokrzywki.',15,'https://cdn.doz.pl/image/product/92079/scale/350x350');
COMMIT;
