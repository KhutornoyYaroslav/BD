connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
values (1, 'Deep Purple - Machine Head','UK', 'MP3', 10, '00:50:25', 1972);
insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
values (2, 'Deep Purple - In Rock','UK', 'flac', 10, '00:45:15', 1970);
insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
values (3, 'Deep Purple - Burn','UK', 'flac', 9, '00:49:18', 1975);
insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
values (4, 'Deep Purple - Deep Purple','UK', 'flac', 7, '01:00:15', 1968);
insert into CD (CD_ID, CD_NAME, CD_COUNTRY, CD_FORMAT, CD_RATING, CD_TIME, CD_YEAR)
values (5, 'Deep Purple - Now What?!','UK', 'flac', 8, '00:52:32', 2013);

insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (1,'Deep Purple', 'deeppurple.com', 'Deep Purple are an English rock band formed
in Hertford in 1968. They are considered to be among the pioneers of heavy metal and
modern hard rock, although their musical approach changed over the years.');
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (2,'The Beatles', 'TheBeatles.com', 'Best of the best');

insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (3,'Rolling Stones', 'RollingStones.com', NULL);
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (4,'Joe Satriani', 'Satriani.com', NULL);
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (5,'Steve Morse', 'Stevemorse.com', NULL);
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (6,'The Doors', 'Doorsband.com', NULL);
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (7,'DDT', 'ddt.com', NULL);
insert into players ( PLAYER_ID, PLAYER_NAME, PLAYER_SITE, PLAYER_DESCRIPTION)
values (8,'Led Zeppelin', 'LZ.com', NULL);




insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (1, 'Ian Gillan', 'Vocal', 'burn in 1945');
insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (2, 'Jon Lord', 'Keyboards', 'burn in 1941');
insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (3, 'Steve Morse', 'Guitar', 'burn in 1954');
insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (4, 'Ian Paice', 'Drums', 'burn in 1945');
insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (5, 'John Lennon', 'Vokal, Keyboards', 'burn in 1941');
insert into ARTISTS (ARTISTS_ID, ARTISTS_NAME, ARTISTS_ROLE, ARTISTS_BIOGRAPHY)
values (6, 'Yaroslav Khutornoy', 'Guitar', 'burn in 1995');

insert into GENRE (GENRE_NAME) values ('Rock');
insert into GENRE (GENRE_NAME) values ('Blues');
insert into GENRE (GENRE_NAME) values ('Jazz');
insert into GENRE (GENRE_NAME) values ('Classic');
insert into GENRE (GENRE_NAME) values ('Hard Rock');



insert into RECORDING_STUDIO ( RECORDING_STUDIO_ID, RECORDING_STUDIO_NAME,
RECORDING_STUDIO_COUNTRY, RECORDING_STUDIO_DESCRIPTION, RECORDING_STUDIO_SITE)
values (1, 'Abbey Road', 'UK', 'Best rec. st.', 'abbeyroad.com');

insert into CD_GENRE (CD_ID, GENRE_NAME)
values (1,'Rock');
insert into CD_GENRE (CD_ID, GENRE_NAME)
values (2,'Rock');
insert into CD_GENRE (CD_ID, GENRE_NAME)
values (3,'Hard Rock');

insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 1);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 2);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 3);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 4);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (2, 5);

insert into  CD_PLAYERS(CD_ID, PLAYER_ID)
values (1, 1);
insert into  CD_PLAYERS(CD_ID, PLAYER_ID)
values (2, 1);
insert into  CD_PLAYERS(CD_ID, PLAYER_ID)
values (3, 1);
insert into  CD_PLAYERS(CD_ID, PLAYER_ID)
values (4, 1);
insert into  CD_PLAYERS(CD_ID, PLAYER_ID)
values (5, 1);

insert into  CD_RECORDING_STUDIO(CD_ID, RECORDING_STUDIO_ID)
values (1, 1);
insert into  CD_RECORDING_STUDIO(CD_ID, RECORDING_STUDIO_ID)
values (2, 1);

insert into  GENRE_ARTISTS(ARTISTS_ID, GENRE_NAME)
values (1, 'Rock');
insert into  GENRE_ARTISTS(ARTISTS_ID, GENRE_NAME)
values (2, 'Rock');

insert into  GENRE_PLAYERS(PLAYER_ID, GENRE_NAME)
values (1, 'Rock');
insert into  GENRE_PLAYERS(PLAYER_ID, GENRE_NAME)
values (1, 'Blues');

insert into  MYPLAYLIST(MYPLAYLIST_NAME, MYPLAYLIST_DESCRIPTION)
values ('Home playlist', 'Blues and rock songs');

insert into  MYPLAYLIST_TRACK(MYPLAYLIST_NAME, TRACK_ID)
values ('Home playlist', 1);
insert into  MYPLAYLIST_TRACK(MYPLAYLIST_NAME, TRACK_ID)
values ('Home playlist', 3);

insert into  PLAYERS_ARTISTS(PLAYER_ID, ARTISTS_ID)
values (1, 1);
insert into  PLAYERS_ARTISTS(PLAYER_ID, ARTISTS_ID)
values (1, 2);

insert into  PLAYERS_TRACK(PLAYER_ID, TRACK_ID)
values (1, 1);
insert into  PLAYERS_TRACK(PLAYER_ID, TRACK_ID)
values (1, 2);
insert into  PLAYERS_TRACK(PLAYER_ID, TRACK_ID)
values (1, 3);
insert into  PLAYERS_TRACK(PLAYER_ID, TRACK_ID)
values (1, 4);

insert into  TRACK_ARTISTS(TRACK_ID, ARTISTS_ID)
values (1, 1);
insert into  TRACK_ARTISTS(TRACK_ID, ARTISTS_ID)
values (2, 1);



insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 6);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (1, 7);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (2, 8);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (2, 9);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (2, 10);

insert into  CD_TRACK(CD_ID, TRACK_ID)
values (3, 11);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (3, 12);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (3, 13);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (3, 14);
insert into  CD_TRACK(CD_ID, TRACK_ID)
values (3, 15);

commit;
