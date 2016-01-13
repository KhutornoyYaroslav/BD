set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/* Вывести зависимость изменения популярности композиции с течением
 времени в зависимости от жанра.*/

create procedure HP_2_LAB5_11 (Genre_of_song varchar(255), Name_of_song varchar(255))
returns(Year_ integer, TrackName  varchar(255), Genre_  varchar(255), Sales integer)
as
declare variable i integer default 0;
declare variable yearp integer;
declare variable y integer;

declare variable id_track integer;
begin
select TRACK.TRACK_YEAR , TRACK.TRACK_ID from TRACK
where TRACK.TRACK_NAME = :Name_of_song and
TRACK.TRACK_GENRE = :Genre_of_song  into :yearp, :id_track;

y = 2016-yearp;

while (i<y) do
begin
select TRACK.TRACK_NAME as TRACK_NAME , TRACK.TRACK_GENRE as GENRE,
count(SALE_TRACK.SALE_TRACK_ID) as NUMBER_OF_SALES
from SALE_TRACK, TRACK
where SALE_TRACK.TRACK_ID = TRACK.TRACK_ID and
TRACK.TRACK_NAME = :Name_of_song and
TRACK.TRACK_GENRE = :Genre_of_song and
SALE_TRACK.TRACK_ID =  :id_track and
SALE_TRACK.SALE_DATA between cast((:yearp+:i) as integer)||"-01-01" and cast((:yearp+1+:i) as integer)||"-01-01"
group by SALE_TRACK.TRACK_ID , TRACK.TRACK_NAME, TRACK.TRACK_GENRE into :TrackName,  :Genre_, :Sales;

Year_ =  cast((:yearp+:i) as integer);
suspend;
i = i + 1;
end
end;
commit;

