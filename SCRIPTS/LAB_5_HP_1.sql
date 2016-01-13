set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create procedure HP_1_LAB5 (ARTISTS_NAMEp varchar(255), YEARp integer)
returns(
kv1 integer,  kv2 integer, kv3 integer, kv4 integer) /*Динамики продаж поквартально*/
as
declare variable b1 integer; /*Продажи в первом квартале года YEARp*/
declare variable b2 integer; /*Продажи во втором квартале года YEARp*/
declare variable b3 integer; /*Продажи в третьем квартале года YEARp*/
declare variable b4 integer; /*Продажи в четвертом квартале года YEARp*/

declare variable a1 integer; /*Продажи в первом квартале года YEARp - 1*/
declare variable a2 integer; /*Продажи во втором квартале года YEARp - 1*/
declare variable a3 integer; /*Продажи в третьем квартале года YEARp - 1*/
declare variable a4 integer; /*Продажи в четвертом квартале года YEARp - 1*/

declare variable YEAR2p integer;
begin
YEAR2p = :YEARp - 1;
/*За заданный год ищем значения поквартально проданных дисков*/
select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEARp||"-01-01" and "2015-04-01"
group by ARTISTS.artists_name into :b1;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEARp||"-04-01" and "2015-07-01"
group by ARTISTS.artists_name into :b2;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEARp||"-07-01" and "2015-10-01"
group by ARTISTS.artists_name into :b3;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEARp||"-10-01" and "2016-01-01"
group by ARTISTS.artists_name into :b4;


/*За предыдущий год ищем значения поквартально проданных дисков*/
select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEAR2p||"-01-01" and "2014-04-01"
group by ARTISTS.artists_name into :a1;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEAR2p||"-04-01" and "2014-07-01"
group by ARTISTS.artists_name into :a2;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEAR2p||"-07-01" and "2014-10-01"
group by ARTISTS.artists_name into :a3;

select count(SALE_TRACK.SALE_TRACK_ID) from SALE_TRACK, TRACK_ARTISTS, ARTISTS where
SALE_TRACK.TRACK_ID = TRACK_ARTISTS.TRACK_ID and
TRACK_ARTISTS.artists_id = ARTISTS.artists_id and
ARTISTS.artists_name = :ARTISTS_NAMEp and
SALE_TRACK.SALE_DATA between :YEAR2p||"-10-01" and "2015-01-01"
group by ARTISTS.artists_name into :a4;

/*Ищем динамику, т. е. разницу между кварталами*/
kv1 = :b1 - :a1;
kv2 = :b2 - :a2;
kv3 = :b3 - :a3;
kv4 = :b4 - :a4;

end;
commit;

