set names WIN1251;
connect 'C:\DB\MUSICLIBRARY.FDB' user 'SYSDBA' password 'masterkey';

/* При заказе трека клиентом проверять не куплен ли был это трек ранее
 как отдельно, так и в рамках альбома. Если был приобретен - не добавлять
 трек в заказ.*/
create exception my_exc2 'Error! This song has been already bought.';

create trigger trig_control_sale_track for SALE_TRACK before
insert
as
begin
if ((NEW.TRACK_ID in (select SALE_TRACK.TRACK_ID from SALE_TRACK where
SALE_TRACK.client_id = NEW.CLIENT_ID)) or (NEW.TRACK_ID in (select
SALE_TRACK.TRACK_ID from SALE_TRACK, CD_TRACK, CD, SALE_CD where
SALE_TRACK.TRACK_ID = CD_TRACK.TRACK_ID and CD_TRACK.CD_ID = CD.CD_ID and
CD.CD_ID =  SALE_CD.CD_ID and SALE_CD.CLIENT_ID = NEW.CLIENT_ID)))
then
begin
exception my_exc2;
end
end;

commit;

