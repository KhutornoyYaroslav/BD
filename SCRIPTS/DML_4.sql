connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
 /*¬ыборка из св€занных таблиц*/

/*¬ыборка названи€ альбома из таблицы CD и соответсвующих ему треков из таблицы TRECK при условии, что
мы смотрим CD.ID = 1 */
create view  SELECT_SV_TABLES1 as select CD.CD_ID, CD.CD_NAME , TRACK.TRACK_NAME
from CD, TRACK, CD_TRACK where CD.CD_ID = CD_TRACK.CD_ID and TRACK.TRACK_ID = CD_TRACK.TRACK_ID and CD.CD_ID = 1;

/*¬ыборка треков из таблицы TRACK соответсвующих автору Ian Gillan из таблицы ARTISTS */
create view SELECT_SV_TABLES2 as select ARTISTS.artists_name, TRACK.track_name from ARTISTS, TRACK, track_artists
where ARTISTS.artists_id = TRACK_ARTISTS.artists_id and TRACK.track_id = TRACK_ARTISTS.track_id and ARTISTS.artists_name like 'Ian Gillan%';

commit;

