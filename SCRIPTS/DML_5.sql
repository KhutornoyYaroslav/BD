connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*ѕример вложенных запросов*/

/* ќтображение названий тех дисков, в которых содержитс€ песн€ Fools */
create view SELECT_VLOZEN as select CD_TRACK.CD_ID, CD.CD_NAME  from CD_TRACK, CD, TRACK where
CD_TRACK.CD_ID = CD.CD_ID and CD_TRACK.TRACK_ID = TRACK.TRACK_ID and
CD_TRACK.TRACK_ID in (select TRACK.TRACK_ID from TRACK where TRACK_NAME like 'Fools%');

commit;

