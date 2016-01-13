connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create view TOP_10_TRACKS as select first 10 TRACK.TRACK_NAME as NAME_OF_TRACK,
SALE_TRACK.TRACK_ID as TRACK_ID,
count(SALE_TRACK.SALE_TRACK_ID) as NUMBER_OF_SALES
from TRACK, SALE_TRACK where TRACK.TRACK_ID = TRACK_ID and
SALE_TRACK.SALE_DATA between "2015-01-01" and "2015-02-01"
group by SALE_TRACK.TRACK_ID, TRACK.TRACK_NAME order by NUMBER_OF_SALES desc;

commit;
