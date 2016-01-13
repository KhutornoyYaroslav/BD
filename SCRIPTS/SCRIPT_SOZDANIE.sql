connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
drop database;
create database 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create table CD
(
CD_ID int primary key,
CD_NAME varchar (255) not null,
CD_COUNTRY varchar (255),
CD_FORMAT varchar (255),
CD_RATING smallint,
CD_TIME varchar (255),
CD_YEAR smallint
);

create table PLAYERS
(
PLAYER_ID int primary key,
PLAYER_NAME varchar(255) NOT NULL,
PLAYER_SITE varchar(255),
PLAYER_DESCRIPTION varchar(255)
);

create table ARTISTS
(
ARTISTS_ID int primary key,
ARTISTS_NAME varchar(255) NOT NULL,
ARTISTS_ROLE varchar(255),
ARTISTS_BIOGRAPHY varchar(255)
);

create table RECORDING_STUDIO
(
RECORDING_STUDIO_ID int primary key,
RECORDING_STUDIO_NAME varchar(255) NOT NULL,
RECORDING_STUDIO_COUNTRY varchar(255),
RECORDING_STUDIO_DESCRIPTION varchar(255),
RECORDING_STUDIO_SITE varchar(255)
);


create table TRACK
(
TRACK_ID int primary key,
TRACK_NAME varchar(255) NOT NULL,
TRACK_TIME varchar (255),
TRACK_GENRE varchar (255),
TRACK_YEAR smallint,
TRACK_RATING smallint
);

create table GENRE
(
GENRE_NAME varchar(255) primary key
);

create table MYPLAYLIST
(
MYPLAYLIST_NAME varchar(255) primary key,
MYPLAYLIST_DESCRIPTION varchar(255)
);

create table CD_PLAYERS
(
CD_ID int,
PLAYER_ID int,
constraint PK_CD_PLAYERS primary key (CD_ID,PLAYER_ID)
);

create table CD_TRACK
(
CD_ID int,
TRACK_ID int,
constraint PK_CD_TRACK primary key (CD_ID,TRACK_ID)
);

create table MYPLAYLIST_TRACK
(
MYPLAYLIST_NAME varchar(255),
TRACK_ID int,
constraint PK_MYPLAYLIST_TRACK primary key (MYPLAYLIST_NAME,TRACK_ID)
);

create table PLAYERS_TRACK
(
PLAYER_ID int,
TRACK_ID int,
constraint PK_PLAYERS_TRACK primary key (PLAYER_ID, TRACK_ID)
);

create table GENRE_ARTISTS
(
ARTISTS_ID int,
GENRE_NAME varchar(255),
constraint PK_GENRE_ARTISTS primary key (ARTISTS_ID, GENRE_NAME)
);

create table GENRE_PLAYERS
(
PLAYER_ID int,
GENRE_NAME varchar(255),
constraint PK_GENRE_PLAYERS primary key (PLAYER_ID, GENRE_NAME)
);

create table CD_GENRE
(
CD_ID int,
GENRE_NAME varchar(255),
constraint PK_CD_GENRE primary key (CD_ID, GENRE_NAME)
);

create table TRACK_ARTISTS
(
TRACK_ID int,
ARTISTS_ID int,
constraint PK_TRACK_ARTISTS primary key (TRACK_ID, ARTISTS_ID)
);

create table CD_RECORDING_STUDIO
(
CD_ID int,
RECORDING_STUDIO_ID int,
constraint PK_CD_RECORDING_STUDIO primary key (CD_ID, RECORDING_STUDIO_ID)
);

create table PLAYERS_ARTISTS
(
PLAYER_ID int,
ARTISTS_ID int,
constraint PK_PLAYERS_ARTISTS primary key (PLAYER_ID, ARTISTS_ID)
);

alter table CD_PLAYERS add constraint CD_PLAYERS_FK_0 foreign key (CD_ID) references CD(CD_ID);
alter table CD_PLAYERS add constraint CD_PLAYERS_FK_1 foreign key (PLAYER_ID) references PLAYERS(PLAYER_ID);

alter table PLAYERS_ARTISTS add constraint PLAYERS_ARTISTS_FK_0 foreign key (ARTISTS_ID) references ARTISTS(ARTISTS_ID);
alter table PLAYERS_ARTISTS add constraint PLAYERS_ARTISTS_FK_1 foreign key (PLAYER_ID) references PLAYERS(PLAYER_ID);

alter table CD_TRACK add constraint CD_TRACK_FK_0 foreign key (TRACK_ID) references TRACK(TRACK_ID);
alter table CD_TRACK add constraint CD_TRACK_FK_1 foreign key (CD_ID) references CD(CD_ID);

alter table MYPLAYLIST_TRACK add constraint MYPLAYLIST_TRACK_FK_0 foreign key (MYPLAYLIST_NAME) references MYPLAYLIST (MYPLAYLIST_NAME);
alter table MYPLAYLIST_TRACK add constraint MYPLAYLIST_TRACK_FK_1 foreign key (TRACK_ID) references TRACK(TRACK_ID);

alter table PLAYERS_TRACK add constraint PLAYERS_TRACK_FK0 foreign key (PLAYER_ID) references PLAYERS(PLAYER_ID);
alter table PLAYERS_TRACK add constraint PLAYERS_TRACK_FK1 foreign key (TRACK_ID) references TRACK(TRACK_ID);

alter table GENRE_ARTISTS add constraint GENRE_ARTISTS_FK0 foreign key (GENRE_NAME) references GENRE(GENRE_NAME);
alter table GENRE_ARTISTS add constraint GENRE_ARTISTS_FK1 foreign key (ARTISTS_ID) references ARTISTS(ARTISTS_ID);

alter table GENRE_PLAYERS add constraint GENRE_PLAYERS_FK_0 foreign key (GENRE_NAME) references GENRE(GENRE_NAME);
alter table GENRE_PLAYERS add constraint GENRE_PLAYERS_FK_1 foreign key (PLAYER_ID) references PLAYERS(PLAYER_ID);

alter table CD_GENRE add constraint CD_GENRE_FK_0 foreign key (CD_ID) references CD(CD_ID);
alter table CD_GENRE add constraint CD_GENRE_FK_1 foreign key (GENRE_NAME) references GENRE(GENRE_NAME);

alter table TRACK_ARTISTS add constraint TRACK_ARTISTS_FK_0 foreign key (TRACK_ID) references TRACK(TRACK_ID);
alter table TRACK_ARTISTS add constraint TRACK_ARTISTS_FK_1 foreign key (ARTISTS_ID) references ARTISTS(ARTISTS_ID);

alter table CD_RECORDING_STUDIO add constraint CD_RECORDING_STUDIO_FK_0 foreign key (CD_ID) references CD(CD_ID);
alter table CD_RECORDING_STUDIO add constraint CD_RECORDING_STUDIO_FK_1 foreign key (RECORDING_STUDIO_ID) references RECORDING_STUDIO(RECORDING_STUDIO_ID);

commit;
