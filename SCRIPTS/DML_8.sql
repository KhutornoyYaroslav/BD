connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*������� � ������� ����������� ����*/
/*���������� �������� ������ � �� ����� ������� � ��������� ������� ������*/
create view VICHISL_SELECT as select CD.CD_NAME as CD_NAME, CD.CD_YEAR as CD_YEAR,
2016 - CD.CD_YEAR as CD_OLD from CD order by CD_OLD asc;
;

commit;

