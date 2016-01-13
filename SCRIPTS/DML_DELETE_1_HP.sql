connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*С помощью DELETE удалить запись, имеющую максимальное(минимальное) значение некоторой совокупной характеристики*/

/*Удаляем самый новый диск с таблицы CD*/
create procedure DELETE_CD_1
as
begin
delete from CD where CD.CD_YEAR = (select max(CD_YEAR) from CD);
end;

commit;

