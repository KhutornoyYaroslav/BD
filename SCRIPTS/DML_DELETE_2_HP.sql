connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';
/*� ������� DELETE ������� ������ � ������� �������, �� ������� �� ��������� ����������� �������
(��������� ��������� ������)*/

/*������� �� ����� � ������� CD, � ������� �� ���������� ������ (�� ��������� ������� �� ������� ������)*/
create procedure DELETE_CD_2
as
begin
delete from CD where CD_ID not in (select CD_ID from CD_TRACK);
end;

commit;

