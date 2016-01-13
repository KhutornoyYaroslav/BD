connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*Пример запроса, рассчитывающий совокупную характеристику с использованием группировки с
наложением ограничения на результат группировки*/

/*Сгруппировать альбмоы по форматам, подсчитать кол-во альбомов каждого формата и показать только
те группы, в которых кол-во альбомов больше 1*/
create view GROUP_SELECT as select  CD.CD_FORMAT as FORMAT, count(CD.CD_FORMAT) as CD_COUNT
from CD group by CD.CD_FORMAT having count(CD.CD_FORMAT)>1;
;

commit;

