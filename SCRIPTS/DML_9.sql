connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*С помощью INSERT добавить запись в каждую таблицу*/

create procedure INS_CD (CD_IDp integer, CD_NAMEp varchar(255), CD_COUNTRYp varchar(255),
CD_FORMATp varchar(255), CD_RATINGp smallint, CD_TIMEp varchar(255), CD_YEARp smallint)
as
begin
    insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
    values (:CD_IDp, :CD_NAMEp, :CD_COUNTRYp, :CD_FORMATp, :CD_RATINGp, :CD_TIMEp, :CD_YEARp );
end;

create procedure INS_ARTISTS (ARTISTS_IDp integer, ARTISTS_NAMEp varchar(255), ARTISTS_ROLEp varchar(255),
ARTISTS_BIOGRAPHYp varchar(255))
as
begin
    insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
    values (:ARTISTS_IDp, :ARTISTS_NAMEp, :ARTISTS_ROLEp, :ARTISTS_BIOGRAPHYp);
end;

commit;

