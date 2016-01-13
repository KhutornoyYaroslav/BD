connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/*Выборка дисков по рейтингу в порядке убывания из таблицы CD */
create view  ORDER_CD_RAITING1 as select * from CD order by CD_RATING asc;

/*Выборка дисков по рейтингу и по ID в порядке возрастания из таблицы CD */
create view  ORDER_CD_RAITING2 as select * from CD order by CD_RATING desc, CD_ID desc;

commit;

