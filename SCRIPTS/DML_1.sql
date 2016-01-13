connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

CREATE OR ALTER VIEW ARTISTSSELECT(
    ARTISTS_ID,
    ARTISTS_NAME,
    ARTISTS_ROLE,
    ARTISTS_BIOGRAPHY)
AS
select * from ARTISTS
;
CREATE OR ALTER VIEW CDSELECT(
    CD_ID,
    CD_NAME,
    CD_COUNTRY,
    CD_FORMAT,
    CD_RATING,
    CD_TIME,
    CD_YEAR)
AS
select * from CD
;
CREATE OR ALTER VIEW CD_GENRESELECT(
    CD_ID,
    GENRE_NAME)
AS
select * from CD_GENRE
;
CREATE OR ALTER VIEW CD_PLAYERSSELECT(
    CD_ID,
    PLAYER_ID)
AS
select * from CD_PLAYERS
;
CREATE OR ALTER VIEW CD_RECORDING_STUDIOSSELECT(
    CD_ID,
    RECORDING_STUDIO_ID)
AS
select * from CD_RECORDING_STUDIO
;
CREATE OR ALTER VIEW CD_TRACKSELECT(
    CD_ID,
    TRACK_ID)
AS
select * from CD_TRACK
;
CREATE OR ALTER VIEW CLIENTSELECT(
    CLIENT_ID,
    CLIENT_NAME,
    CLIENT_LOGIN)
AS
select * from CLIENT
;
CREATE OR ALTER VIEW GENRESELECT(
    GENRE_NAME)
AS
select * from GENRE
;
CREATE OR ALTER VIEW GENRE_ARTISTSSELECT(
    ARTISTS_ID,
    GENRE_NAME)
AS
select * from GENRE_ARTISTS
;
CREATE OR ALTER VIEW GENRE_PLAYERSSELECT(
    PLAYER_ID,
    GENRE_NAME)
AS
select * from GENRE_PLAYERS
;
CREATE OR ALTER VIEW MYPLAYLISTSELECT(
    MYPLAYLIST_NAME,
    MYPLAYLIST_DESCRIPTION)
AS
select * from MYPLAYLIST
;
CREATE OR ALTER VIEW MYPLAYLIST_TRACKSELECT(
    MYPLAYLIST_NAME,
    TRACK_ID)
AS
select * from MYPLAYLIST_TRACK
;
CREATE OR ALTER VIEW PLAYERSSELECT(
    PLAYER_ID,
    PLAYER_NAME,
    PLAYER_SITE,
    PLAYER_DESCRIPTION)
AS
select * from PLAYERS
;
CREATE OR ALTER VIEW PLAYERS_ARTISTSSELECT(
    PLAYER_ID,
    ARTISTS_ID)
AS
select * from PLAYERS_ARTISTS
;
CREATE OR ALTER VIEW PLAYERS_TRACKSELECT(
    PLAYER_ID,
    TRACK_ID)
AS
select * from PLAYERS_TRACK
;
CREATE OR ALTER VIEW RECORDING_STUDIOSELECT(
    RECORDING_STUDIO_ID,
    RECORDING_STUDIO_NAME,
    RECORDING_STUDIO_COUNTRY,
    RECORDING_STUDIO_DESCRIPTION,
    RECORDING_STUDIO_SITE)
AS
select * from RECORDING_STUDIO
;
CREATE OR ALTER VIEW SALE_CDSELECT(
    SALE_CD_ID,
    CD_ID,
    CLIENT_ID,
    SALE_DATA,
    SALE_PRICE)
AS
select * from SALE_CD
;
CREATE OR ALTER VIEW SALE_CD_CLIENTSELECT(
    SALE_CD_ID,
    CLIENT_ID)
AS
select * from SALE_CD_CLIENT
;
CREATE OR ALTER VIEW SALE_TRACKSELECT(
    SALE_TRACK_ID,
    TRACK_ID,
    CLIENT_ID,
    SALE_DATA,
    SALE_PRICE)
AS
select * from SALE_TRACK
;
CREATE OR ALTER VIEW SALE_TRACK_CLIENTSELECT(
    SALE_TRACK_ID,
    CLIENT_ID)
AS
select * from SALE_TRACK_CLIENT
;
CREATE OR ALTER VIEW TRACKSELECT(
    TRACK_ID,
    TRACK_NAME,
    TRACK_TIME,
    TRACK_GENRE,
    TRACK_YEAR,
    TRACK_RATING)
AS
select * from TRACK
;
CREATE OR ALTER VIEW TRACK_ARTISTSSELECT(
    TRACK_ID,
    ARTISTS_ID)
AS
select * from TRACK_ARTISTS
;



commit;

