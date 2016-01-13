connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/*Выборка артистов с именем Ian Gillan из таблицы ARTISTS*/
create view  LIKE_IANGILLAN as select * from ARTISTS where ARTISTS_NAME like 'Ian Gillan%';
/*Выборка альбомов выпущенных в период 1969-1971 годов из таблицы CD*/
create view  BETWEEN_CD69_71 as select * from CD where CD_YEAR between 1969 and 1971;
/*Выборка групп, у которых сайт deeppurple.com из таблицы PLAYERS*/
create view  IN_PLAYERS6 as select * from PLAYERS where PLAYER_SITE in ('deeppurple.com');

commit;

