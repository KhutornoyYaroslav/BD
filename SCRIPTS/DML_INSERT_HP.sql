connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*С помощью INSERT добавить запись в каждую таблицу*/

/*ХП для заполнения таблицы CD*/
create procedure INS_CD (CD_IDp integer, CD_NAMEp varchar(255), CD_COUNTRYp varchar(255),
CD_FORMATp varchar(255), CD_RATINGp smallint, CD_TIMEp varchar(255), CD_YEARp smallint)
as
begin
    insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
    values (:CD_IDp, :CD_NAMEp, :CD_COUNTRYp, :CD_FORMATp, :CD_RATINGp, :CD_TIMEp, :CD_YEARp );
end;
/*ХП для заполнения таблицы ARTISTS*/
create procedure INS_ARTISTS (ARTISTS_IDp integer, ARTISTS_NAMEp varchar(255), ARTISTS_ROLEp varchar(255),
ARTISTS_BIOGRAPHYp varchar(255))
as
begin
    insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
    values (:ARTISTS_IDp, :ARTISTS_NAMEp, :ARTISTS_ROLEp, :ARTISTS_BIOGRAPHYp);
end;
/*ХП для заполнения таблицы CD_GENRE*/
create procedure INS_CD_GENRE (CD_IDp integer, GENRE_NAMEp varchar(255))
as
begin
    insert into CD_GENRE (CD_ID, GENRE_NAME)
    values (:CD_IDp, :GENRE_NAMEp);
end;
/*ХП для заполнения таблицы CD_PLAYERS*/
create procedure INS_CD_PLAYERS (CD_IDp integer, PLAYER_IDp integer)
as
begin
    insert into CD_PLAYERS (CD_ID, PLAYER_ID)
    values (:CD_IDp, :PLAYER_IDp);
end;
/*ХП для заполнения таблицы CD_RECORDING_STUDIO*/
create procedure INS_CD_RECORDING_STUDIO (CD_IDp integer, RECORDING_STUDIO_IDp integer)
as
begin
    insert into CD_RECORDING_STUDIO (CD_ID, RECORDING_STUDIO_ID)
    values (:CD_IDp, :RECORDING_STUDIO_IDp);
end;
/*ХП для заполнения таблицы CD_TRACK*/
create procedure INS_CD_TRACK (CD_IDp integer, TRACK_IDp integer)
as
begin
    insert into CD_TRACK (CD_ID, TRACK_ID)
    values (:CD_IDp, :TRACK_IDp);
end;
/*ХП для заполнения таблицы CLIENT*/
create procedure INS_CLIENT (CLIENT_IDp integer, CLIENT_NAMEp varchar(255), CLIENT_LOGINp varchar(255))
as
begin
    insert into CLIENT (CLIENT_ID, CLIENT_NAME, CLIENT_LOGIN)
    values (:CLIENT_IDp, :CLIENT_NAMEp, :CLIENT_LOGINp);
end;
/*ХП для заполнения таблицы GENRE*/
create procedure INS_GENRE (GENRE_NAMEp varchar(255))
as
begin
    insert into GENRE (GENRE_NAME)
    values (:GENRE_NAMEp);
end;
/*ХП для заполнения таблицы GENRE_ARTISTS*/
create procedure INS_GENRE_ARTISTS (ARTISTS_IDp integer, GENRE_NAMEp varchar(255))
as
begin
    insert into GENRE_ARTISTS (ARTISTS_ID, GENRE_NAME)
    values (:ARTISTS_IDp, :GENRE_NAMEp);
end;
/*ХП для заполнения таблицы GENRE_PLAYERS*/
create procedure INS_GENRE_PLAYERS (PLAYER_IDp integer, GENRE_NAMEp varchar(255))
as
begin
    insert into GENRE_PLAYERS (PLAYER_ID, GENRE_NAME)
    values (:PLAYER_IDp, :GENRE_NAMEp);
end;
/*ХП для заполнения таблицы MYPLAYLIST*/
create procedure INS_MYPLAYLIST (MYPLAYLIST_NAMEp varchar(255), MYPLAYLIST_DESCRIPTIONp varchar(255))
as
begin
    insert into MYPLAYLIST (MYPLAYLIST_NAME, MYPLAYLIST_DESCRIPTION)
    values (:MYPLAYLIST_NAMEp, :MYPLAYLIST_DESCRIPTIONp);
end;
/*ХП для заполнения таблицы MYPLAYLIST_TRACK*/
create procedure INS_MYPLAYLIST_TRACK (MYPLAYLIST_NAMEp varchar(255), TRACK_IDp integer)
as
begin
    insert into MYPLAYLIST_TRACK (MYPLAYLIST_NAME, TRACK_ID)
    values (:MYPLAYLIST_NAMEp, :TRACK_IDp);
end;
/*ХП для заполнения таблицы PLAYERS*/
create procedure INS_PLAEYRS (PLAYER_IDp integer, PLAYER_NAMEp varchar(255), PLAYER_SITEp varchar(255), PLAYER_DESCRIPTIONp varchar(255))
as
begin
    insert into PLAYERS (PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
    values (:PLAYER_IDp, :PLAYER_NAMEp, :PLAYER_SITEp, :PLAYER_DESCRIPTIONp);
end;
/*ХП для заполнения таблицы PLAYERS_ARTISTS*/
create procedure INS_PLAYERS_ARTISTS (PLAYER_IDp integer, ARTISTS_IDp integer)
as
begin
    insert into PLAYERS_ARTISTS (PLAYER_ID, ARTISTS_ID)
    values (:PLAYER_IDp, :ARTISTS_IDp);
end;
/*ХП для заполнения таблицы PLAYERS_TRACK*/
create procedure INS_PLAYERS_TRACK (PLAYER_IDp integer, TRACK_IDp integer)
as
begin
    insert into PLAYERS_TRACK (PLAYER_ID, TRACK_ID)
    values (:PLAYER_IDp, :TRACK_IDp);
end;
/*ХП для заполнения таблицы RECORDING_STUDIO*/
create procedure INS_RECORDING_STUDIO (RECORDING_STUDIO_IDp integer, RECORDING_STUDIO_NAMEp varchar(255),
RECORDING_STUDIO_COUNTRYp varchar(255), RECORDING_STUDIO_DESCRIPTIONp varchar(255), RECORDING_STUDIO_SITEp varchar(255))
as
begin
    insert into RECORDING_STUDIO (RECORDING_STUDIO_ID, RECORDING_STUDIO_NAME, RECORDING_STUDIO_COUNTRY,
    RECORDING_STUDIO_DESCRIPTION, RECORDING_STUDIO_SITE)
    values (:RECORDING_STUDIO_IDp, :RECORDING_STUDIO_NAMEp, :RECORDING_STUDIO_COUNTRYp,
    :RECORDING_STUDIO_DESCRIPTIONp, :RECORDING_STUDIO_SITEp);
end;
/*ХП для заполнения таблицы SALE_CD*/
create procedure INS_SALE_CD (SALE_CD_IDp integer, CD_IDp integer, CLIENT_IDp integer,  SALE_DATAp date, 
SALE_PRICEp integer)
as
begin
    insert into SALE_CD (SALE_CD_ID, CD_ID, CLIENT_ID, SALE_DATA, SALE_PRICE)
    values (:SALE_CD_IDp, :CD_IDp, :CLIENT_IDp, :SALE_DATAp, :SALE_PRICEp);
end;
/*ХП для заполнения таблицы SALE_CD_CLIENT*/
create procedure INS_SALE_CD_CLIENT (SALE_CD_IDp integer, CLIENT_IDp integer)
as
begin
    insert into SALE_CD_CLIENT (SALE_CD_ID, CLIENT_ID)
    values (:SALE_CD_IDp, :CLIENT_IDp);
end;
/*ХП для заполнения таблицы SALE_TRACK*/
create procedure INS_SALE_TRACK (SALE_TRACK_IDp integer, TRACK_IDp integer, CLIENT_IDp integer,  SALE_DATAp date,
SALE_PRICEp integer)
as
begin
    insert into SALE_TRACK (SALE_TRACK_ID, TRACK_ID, CLIENT_ID, SALE_DATA, SALE_PRICE)
    values (:SALE_TRACK_IDp, :TRACK_IDp, :CLIENT_IDp, :SALE_DATAp, :SALE_PRICEp);
end;
/*ХП для заполнения таблицы SALE_TRACK_CLIENT*/
create procedure INS_SALE_TRACK_CLIENT (SALE_TRACK_IDp integer, CLIENT_IDp integer)
as
begin
    insert into SALE_TRACK_CLIENT (SALE_TRACK_ID, CLIENT_ID)
    values (:SALE_TRACK_IDp, :CLIENT_IDp);
end;
/*ХП для заполнения таблицы TRACK*/
create procedure INS_TRACK (TRACK_IDp integer, TRACK_NAMEp varchar(255), TRACK_TIMEp varchar(255),
TRACK_YEARp smallint, TRACK_RATINGp smallint)
as
begin
    insert into TRACK (TRACK_ID, TRACK_NAME, TRACK_TIME, TRACK_YEAR, TRACK_RATING)
    values (:TRACK_IDp, :TRACK_NAMEp, :TRACK_TIMEp, :TRACK_YEARp, :TRACK_RATINGp);
end;
/*ХП для заполнения таблицы TRACK_ARTISTS*/
create procedure INS_TRACK_ARTISTS (TRACK_IDp integer, ARTISTS_IDp integer)
as
begin
    insert into TRACK_ARTISTS (TRACK_ID, ARTISTS_ID)
    values (:TRACK_IDp, :ARTISTS_IDp);
end;

commit;

