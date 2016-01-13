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

create table PLAYERS_ARTISTS
(
ARTISTS_ID int,
PLAYER_ID int,
constraint PK_PLAYERS_ARTISTS primary key (ARTISTS_ID,PLAYER_ID)
);

create table CD_TRACK
(
CD_ID int,
TRACK_ID int,
constraint PK_CD_TRACK primary key (CD_ID, TRACK_ID)
);
