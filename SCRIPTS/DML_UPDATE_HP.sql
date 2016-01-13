connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*С помощью UPDATE изменить значения нескольких полей у всех записей,
отвечающих заданному условию*/

/*ХП для модификации таблицы CD*/
create procedure UPDATE_CD (CD_FORMATp varchar(255), CD_RATINGp smallint)
as
begin
    update  CD set CD_FORMAT = :CD_FORMATp, CD_RATING = :CD_RATINGp where CD_YEAR between 1950 and 1985;
end;

commit;

