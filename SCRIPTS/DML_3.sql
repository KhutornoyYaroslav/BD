connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/*������� ������ �� �������� � ������� �������� �� ������� CD */
create view  ORDER_CD_RAITING1 as select * from CD order by CD_RATING asc;

/*������� ������ �� �������� � �� ID � ������� ����������� �� ������� CD */
create view  ORDER_CD_RAITING2 as select * from CD order by CD_RATING desc, CD_ID desc;

commit;

