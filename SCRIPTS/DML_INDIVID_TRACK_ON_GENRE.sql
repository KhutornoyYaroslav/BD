connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create view NUMBER_OF_TRACK_ON_GENRE as select GENRE.GENRE_NAME as GENRE,
count(CD_TRACK.TRACK_ID) as NUMBER_OF_TRACKS from CD_TRACK, GENRE, CD_GENRE, CD where
CD_GENRE.GENRE_NAME = GENRE.GENRE_NAME
and CD_GENRE.CD_ID = CD_TRACK.CD_ID
and CD_GENRE.CD_ID = CD.CD_ID
group by GENRE.GENRE_NAME, GENRE.GENRE_NAME;

commit;
