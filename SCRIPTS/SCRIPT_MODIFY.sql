connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create table SALE_CD
(
SALE_CD_ID int primary key,
CD_ID int NOT NULL,
CLIENT_ID int NOT NULL,
SALE_DATA date NOT NULL,
SALE_PRICE int NOT NULL
);

create table SALE_TRACK
(
SALE_TRACK_ID int primary key,
TRACK_ID int NOT NULL,
CLIENT_ID int NOT NULL,
SALE_DATA date NOT NULL,
SALE_PRICE int NOT NULL
);

create table CLIENT
(
CLIENT_ID int primary key,
CLIENT_NAME varchar(255),
CLIENT_LOGIN  varchar(255) NOT NULL
);

create table SALE_CD_CLIENT
(
SALE_CD_ID int,
CLIENT_ID int,
constraint PK_SALE_CD_CLIENT primary key (SALE_CD_ID, CLIENT_ID)
);

create table SALE_TRACK_CLIENT
(
SALE_TRACK_ID int,
CLIENT_ID int,
constraint PK_SALE_TRACK_CLIENT primary key (SALE_TRACK_ID, CLIENT_ID)
);



alter table SALE_CD_CLIENT add constraint SALE_CD_CLIENT_FK_0 foreign key (SALE_CD_ID) references SALE_CD(SALE_CD_ID);
alter table SALE_CD_CLIENT add constraint SALE_CD_CLIENT_FK_1 foreign key (CLIENT_ID) references CLIENT(CLIENT_ID);

alter table SALE_TRACK_CLIENT add constraint SALE_TRACK_CLIENT_FK_0 foreign key (SALE_TRACK_ID) references SALE_TRACK(SALE_TRACK_ID);
alter table SALE_TRACK_CLIENT add constraint SALE_TRACK_CLIENT_FK_1 foreign key (CLIENT_ID) references CLIENT(CLIENT_ID);

alter table SALE_TRACK add constraint SALE_TRACK_FK_0 foreign key (TRACK_ID) references TRACK(TRACK_ID);

alter table SALE_CD add constraint SALE_CD_FK_0 foreign key (CD_ID) references CD(CD_ID);


commit;



