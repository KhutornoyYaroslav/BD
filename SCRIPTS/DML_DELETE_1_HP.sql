connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*� ������� DELETE ������� ������, ������� ������������(�����������) �������� ��������� ���������� ��������������*/

/*������� ����� ����� ���� � ������� CD*/
create procedure DELETE_CD_1
as
begin
delete from CD where CD.CD_YEAR = (select max(CD_YEAR) from CD);
end;

commit;

