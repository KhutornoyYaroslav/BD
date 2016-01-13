connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*С помощью DELETE удалить записи в главной таблице, на которые не ссылается подчиненная таблица
(используя вложенный запрос)*/

/*Удаляем те диски с таблицы CD, в которых не содержится треков (не ссылается таблица со списком треков)*/
create procedure DELETE_CD_2
as
begin
delete from CD where CD_ID not in (select CD_ID from CD_TRACK);
end;

commit;

