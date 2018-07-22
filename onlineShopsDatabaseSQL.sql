/* Delete the tables if they already exist */
drop table if exists OnlineShop;
drop table if exists Products;
drop table if exists Genres;
drop table if exists Edition;
drop table if exists Prices;

create table OnlineShops(SID int PRIMARY KEY, shopName text);
create table Products(GID int PRIMARY KEY, SID int, FOREIGN KEY(SID) REFERENCES OnlineShops(SID), gameName text);
create table Genres(GID int, Genre text, FOREIGN KEY(GID) REFERENCES Products(GID) ON DELETE CASCADE);
create table Editions(EID int, GID int, CONSTRAINT PK_Editions PRIMARY KEY(EID, GID), FOREIGN KEY (GID) REFERENCES Products(GID), Edition text);
create table Prices(EID int, GID int, CONSTRAINT PK_Prices FOREIGN KEY (EID, GID) REFERENCES Editions(EID, GID) ON DELETE CASCADE, Price float);

/* Insert into tables */
insert into OnlineShops values (101, 'Steam');
insert into OnlineShops values (102, 'Origin');
insert into OnlineShops values (103, 'GOG');

insert into Products values (201, 101, 'FIFA 17');
insert into Products values (202, 101, 'NBA 2K17');
insert into Products values (203, 101, 'Rocket League');
insert into Products values (204, 102, 'World of Warcraft');
insert into Products values (205, 102, 'StarCraft');
insert into Products values (206, 102, 'Skyrim');
insert into Products values (207, 102, 'Civilization VI');
insert into Products values (208, 103, 'Overwatch');
insert into Products values (209, 103, 'Star Wars Battlefront');
insert into Products values (210, 103, 'Call of Duty');
insert into Products values (211, 103, 'Doom');

insert into Genres values (201, 'Sports');
insert into Genres values (202, 'Sports');
insert into Genres values (203, 'Sports');
insert into Genres values (204, 'RPG');
insert into Genres values (205, 'Strategy');
insert into Genres values (206, 'RPG');
insert into Genres values (207, 'Strategy');
insert into Genres values (208, 'Shooter');
insert into Genres values (209, 'Shooter');
insert into Genres values (210, 'Shooter');
insert into Genres values (211, 'Shooter');

insert into Editions values (301, 201, NULL);
insert into Editions values (302, 202, NULL);
insert into Editions values (303, 203, NULL);
insert into Editions values (304, 204, NULL);
insert into Editions values (305, 204, 'The Burning Crusade');
insert into Editions values (306, 204, 'Wrath of the Lich King');
insert into Editions values (307, 204, 'Cataclysm');
insert into Editions values (308, 204, 'Mists of Pandaria');
insert into Editions values (309, 204, 'Warlords of Draenor');
insert into Editions values (310, 204, 'Legion');
insert into Editions values (311, 205, 'Wings of Liberty');
insert into Editions values (312, 205, 'Heart of the Swarm');
insert into Editions values (313, 205, 'Legacy of the Void');
insert into Editions values (314, 206, NULL);
insert into Editions values (315, 207, NULL);
insert into Editions values (316, 208, NULL);
insert into Editions values (317, 208, 'Origins Edition');
insert into Editions values (318, 208, 'Collectors Edition');
insert into Editions values (319, 209, NULL);
insert into Editions values (320, 210, NULL);
insert into Editions values (321, 211, NULL);

insert into Prices values (301, 201, 59.99);
insert into Prices values (302, 202, 59.99);
insert into Prices values (303, 203, 19.99);
insert into Prices values (304, 204, 29.99);
insert into Prices values (305, 204, 19.99);
insert into Prices values (306, 204, 19.99);
insert into Prices values (307, 204, 19.99);
insert into Prices values (308, 204, 29.99);
insert into Prices values (309, 204, 39.99);
insert into Prices values (310, 204, 49.99);
insert into Prices values (311, 205, 29.99);
insert into Prices values (312, 205, 29.99);
insert into Prices values (313, 205, 39.99);
insert into Prices values (314, 206, 49.99);
insert into Prices values (315, 207, 59.99);
insert into Prices values (316, 208, 29.99);
insert into Prices values (317, 208, 39.99);
insert into Prices values (318, 208, 49.99);
insert into Prices values (319, 209, 59.99);
insert into Prices values (320, 210, 19.99);
insert into Prices values (321, 211, 49.99);
