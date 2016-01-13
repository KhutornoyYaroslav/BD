connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create view TOP_5_PLAYERS as select first 5 PLAYERS.PLAYER_NAME as PLAYERS,
count(SALE_CD.SALE_CD_ID) as NUMBERS_OF_SALES_CD
from SALE_CD, PLAYERS, CD_PLAYERS, CD   where
SALE_CD.CD_ID = CD.cd_id and
CD.CD_ID = CD_PLAYERS.cd_id and
CD_PLAYERS.player_id = PLAYERS.PLAYER_ID
and SALE_CD.SALE_DATA between "2015-01-01" and "2015-07-01"
group by PLAYERS.PLAYER_NAME, PLAYERS.PLAYER_NAME order by NUMBERS_OF_SALES_CD desc;

commit;
