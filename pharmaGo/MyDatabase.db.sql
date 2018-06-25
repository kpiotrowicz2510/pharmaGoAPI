BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Products` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Price`	REAL NOT NULL,
	`Name`	TEXT,
	`Description`	TEXT,
	`AvailableAmount`	INTEGER NOT NULL,
	`PriceDiscount`	REAL NOT NULL,
	`PriceDiscountPercent`	REAL NOT NULL,
	`Image`	TEXT
);
INSERT INTO `Products` VALUES (1,5.00,'Paracetamol','Paracetamol 10 tabletek 500 mg. Lek stosowany jest w leczeniu: bólu głowy, bólu gardła, migreny, bólu zębów, bólów kostnych, stawowych i mięśniowych, bolesnego miesiączkowania. Ponadto, lek może być stosowany w przeziębieniach oraz w stanach grypopodobnych. Substancją czynną leku jest paracetamol (Paracetamolum). Inne składniki leku to powidon K29-32, skrobia kukurydziana, krzemionka koloidalna bezwodna, magnezu stearynian.',5,'','','https://files.eapteka.pl/product/59304bb/paracetamol-biofarm-0-5-g-lek-przeciwbolowy-i-przeciwgoraczkowy-10-tabletek-eapteka-pl.jpg');
INSERT INTO `Products` VALUES (2,8.99,'2KC 12 szt.','Suplement diety zawiera składniki wspomagające procesy fizjologiczne po spożyciu alkoholu. Wyciąg z opuncji zawarty w suplemencie diety 2KC zapobiega powstawaniu kaca, łagodząc dyskomfort powstający po konsumpcji alkoholu. Witamina C (kwas L-askorbinowy) zawarta w produkcie przyczynia się do zmniejszenia uczucia zmęczenia i znużenia, wspomaga układ nerwowy i odpornościowy. Nie stosować w przypadku uczulenia na którykolwiek ze składników produktu.',10,'','','https://aptekaodpokolen.pl/pol_pl_KC-2-2KC-pomaga-w-walce-z-objawami-kaca-12-tabletek-26034_1.jpg');
INSERT INTO `Products` VALUES (3,3.99,'BoboVita, Kleik ryżowy','Kleik może być przygotowywany z dodatkiem wody, mleka modyfikowanego (np. Bebiko 2 lub Bebilon 2) lub preparatu mlekozastępczego. Może także stanowić energetyczny dodatek do zupki jarzynowej jako uzupełnienie diety dzieci zdrowych oraz dzieci wymagających stosowania diet specjalnych. Nie zawiera białka mleka krowiego. Produkt bezglutenowy. Wzbogacony w witaminę B1. Zawiera łatwo przyswajalną skrobię.',8,'','','https://media.nutriciastatic.com/uploads/media/59a002eb3415c/kleik-ryzowy.png');
INSERT INTO `Products` VALUES (4,29.90,'Olimp, Vita-Min','60 kapsulek. Kompleksowa kompozycja witamin ( Vita-Plex ®) wraz z kompleksem specjalnych ekstraktów( HEPA-PROST DETOX ®) wpływających na regenerację /ochronę wątroby i prostaty. W skład zestawu wchodzi druga kapsułka ( Chela-Min ®), z wysoko przyswajalnymi , najwyższej jakości składnikami mineralnymi w formie chelatów aminokwasowych firmy ALBION.',3,'','','https://sklep.bodymania.pl/img/products/15/56/1.jpg');
INSERT INTO `Products` VALUES (5,11.90,'Claritine Allergy','Lek Claritine Allergy wskazany jest w leczeniu objawów związanych z alergicznym nieżytem nosa (kichanie, obrzęk błony śluzowej nosa, wyciek z nosa), świąd i pieczenie oczu. Lek ten jest również wskazany w leczeniu objawów przewlekłej pokrzywki idiopatycznnej. Bardzo dobrze wchłania się z przewodu pokarmowego. Początek działania obserwuje się po 1-3 godzinach.',32,'','','https://aptekapomocna24.pl/data/gfx/pictures/medium/8/2/828_1.jpg');
INSERT INTO `Products` VALUES (6,7.90,'4 Lacti Baby','4 Lacti BABY to suplement diety w postaci doustnej zawiesiny, zawierający probiotyczny szczep Lactobacillus rhamnosus GG (ATCC 53103), zasiedlający w sposób naturalny florę bakteryjną przewodu pokarmowego. 5 kropli zawiera 5 miliardów żywych kultur bakterii Lactobacillus rhamnosus GG (ATCC 53103). Preparat polecany jako uzupełnienie normalnej diety w bakterie zasiedlające przewód pokarmowy dla noworodków, niemowląt, dzieci oraz osób dorosłych.',6,'','','https://www.e-medest.pl/produkty_zdjecia/151130143324591.jpg');
INSERT INTO `Products` VALUES (7,4.35,'Alantan Plus, krem','Preparat stosowany w leczeniu różnego rodzaju ran (otarcia, niewielkie skaleczenia itp.); oparzeń (w tym słonecznych oraz po radioterapii), przy zapobieganiu odparzeniom u niemowląt. Polecany do pielęgnacji skóry podrażnionej i wysuszonej, nadmiernym rogowaceniu skóry dłoni i stóp. Wspomagająco w leczeniu atopowego zapalenia skóry, wyprysku alergicznego, zapaleniu błony śluzowej nosa i owrzodzeniach podudzi.',24,'','','https://aptekaprima24.pl/15103-tm_large_default/alantan-plus-krem-35g.jpg');
INSERT INTO `Products` VALUES (8,2.90,'Allertec WZF 10mg','Wskazania: łagodzenie objawów dotyczących nosa i oczu, związanych z sezonowym i przewlekłym alergicznym zapaleniem błony śluzowej nosa (takich jak zatkany nos, duża ilość wodnistej wydzieliny z nosa, częste kichanie, zaczerwienienie oczu, łzawienie, swędzenie oczu); łagodzenie objawów przewlekłej idiopatycznej pokrzywki.',15,'','','https://cdn.doz.pl/image/product/92079/scale/350x350');
CREATE TABLE IF NOT EXISTS `Orders` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`TotalValue`	REAL NOT NULL,
	`TotalItems`	INTEGER NOT NULL,
	`IsPayed`	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `OrderItems` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`IdProduct`	INTEGER NOT NULL,
	`Amount`	INTEGER NOT NULL,
	`BasketID`	INTEGER,
	`OrderID`	INTEGER,
	CONSTRAINT `FK_OrderItems_Baskets_BasketID` FOREIGN KEY(`BasketID`) REFERENCES `Baskets`(`ID`) ON DELETE RESTRICT,
	CONSTRAINT `FK_OrderItems_Orders_OrderID` FOREIGN KEY(`OrderID`) REFERENCES `Orders`(`ID`) ON DELETE RESTRICT
);
INSERT INTO `OrderItems` VALUES (1,1,1,1,NULL);
INSERT INTO `OrderItems` VALUES (2,2,2,1,NULL);
INSERT INTO `OrderItems` VALUES (3,3,1,1,NULL);
CREATE TABLE IF NOT EXISTS `Baskets` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`TotalValue`	REAL NOT NULL,
	`TotalItems`	INTEGER NOT NULL
);
INSERT INTO `Baskets` VALUES (1,0.0,0);
CREATE INDEX IF NOT EXISTS `IX_OrderItems_OrderID` ON `OrderItems` (
	`OrderID`
);
CREATE INDEX IF NOT EXISTS `IX_OrderItems_BasketID` ON `OrderItems` (
	`BasketID`
);
COMMIT;
