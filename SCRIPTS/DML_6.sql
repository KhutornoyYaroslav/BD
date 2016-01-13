connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*Пример запроса, вычисляющего несколько совокупных характеристик таблицы*/

/*Отображеие количества дисков с форматом flac и отображение даты выпуска диска с самым поздним годом выпуска*/
create view SOVOKUP_SELECT as select COUNT(CD.CD_FORMAT) as
NUMBER_OF_FLAC_DISKs, MAX(CD.CD_YEAR) as MAX_YEAR  from CD where CD.CD_FORMAT like 'flac%'
;

commit;

