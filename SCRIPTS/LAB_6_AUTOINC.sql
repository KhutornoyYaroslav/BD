set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

create generator autoinc;
set generator autoinc to 0;

create trigger trig_autoinc_clientid for CLIENT before insert
as
begin
if((new.CLIENT_ID is null) or (new.CLIENT_ID = 0))  then
 begin
 new.CLIENT_ID = gen_id(autoinc, 1);
 end
end;

commit;

