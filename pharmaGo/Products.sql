BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Products` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Price`	REAL NOT NULL,
	`Name`	TEXT,
	`Description`	TEXT,
	`AvailableAmount`	INTEGER NOT NULL,
	`Image`	TEXT
);
INSERT INTO `Products` VALUES (1,5.0,'Paracetamol','Paracetamol 10 tabletek',5,'https://files.eapteka.pl/product/59304bb/paracetamol-biofarm-0-5-g-lek-przeciwbolowy-i-przeciwgoraczkowy-10-tabletek-eapteka-pl.jpg');
INSERT INTO `Products` VALUES (2,8.99,'2KC 12 szt.','Tabletki.
Skład:
witamina C (kwas askorbinowy)
glukoza
kwas bursztynowy
kwas fumarowy
glutaminian sodu',10,'https://aptekaodpokolen.pl/pol_pl_KC-2-2KC-pomaga-w-walce-z-objawami-kaca-12-tabletek-26034_1.jpg');
INSERT INTO `Products` VALUES (3,3.99,'BoboVita, Kleik ryżowy','Po 4 miesiacu. 160g.
Kleik ryżowy stanowi pełnowartościowy, łagodny ryżowo-mleczny posiłek.',8,'https://media.nutriciastatic.com/uploads/media/59a002eb3415c/kleik-ryzowy.png');
INSERT INTO `Products` VALUES (4,29.9,'Olimp, Vita-Min Multiple Sport','60 kapsulek.
Vita-Min Multiple Sport to dwufazowy witaminowo-mineralny suplement diety dla osób dorosłych, w szczególności sportowców.',3,'https://sklep.bodymania.pl/img/products/15/56/1.jpg');
INSERT INTO `Products` VALUES (5,11.9,'Claritine Allergy','Wskazania: leczenie objawów związanych z alergią.',32,'https://aptekapomocna24.pl/data/gfx/pictures/medium/8/2/828_1.jpg');
INSERT INTO `Products` VALUES (6,7.9,'4 Lacti Baby','4 Lacti BABY to suplement diety w postaci doustnej zawiesiny, zawierający probiotyczny szczep Lactobacillus rhamnosus GG (ATCC 53103).',6,'https://www.e-medest.pl/produkty_zdjecia/151130143324591.jpg');
INSERT INTO `Products` VALUES (7,4.35,'Alantan Plus, krem','Wskazania: leczenie różnego rodzaju ran, oparzeń, pielęgnacja sutków podczas karmienia piersią, zapobieganie odparzeniom u niemowląt',24,'https://aptekaprima24.pl/15103-tm_large_default/alantan-plus-krem-35g.jpg');
INSERT INTO `Products` VALUES (8,2.9,'Allertec WZF 10mg','Wskazania: łagodzenie objawów dotyczących nosa i oczu, związanych z sezonowym i przewlekłym alergicznym zapaleniem błony śluzowej nosa (takich jak zatkany nos, duża ilość wodnistej wydzieliny z nosa, częste kichanie, zaczerwienienie oczu, łzawienie, swędzenie oczu); łagodzenie objawów przewlekłej idiopatycznej pokrzywki.',15,'https://cdn.doz.pl/image/product/92079/scale/350x350');
COMMIT;
