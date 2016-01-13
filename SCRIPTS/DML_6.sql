connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*������ �������, ������������ ��������� ���������� ������������� �������*/

/*���������� ���������� ������ � �������� flac � ����������� ���� ������� ����� � ����� ������� ����� �������*/
create view SOVOKUP_SELECT as select COUNT(CD.CD_FORMAT) as
NUMBER_OF_FLAC_DISKs, MAX(CD.CD_YEAR) as MAX_YEAR  from CD where CD.CD_FORMAT like 'flac%'
;

commit;

