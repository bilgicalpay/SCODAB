CREATE DEFINER=`firatmesut`@`%` PROCEDURE `driver_behaivour_score`(IN user VARCHAR(250))
BEGIN
	
    DROP TEMPORARY TABLE IF EXISTS RPM;
    DROP TEMPORARY TABLE IF EXISTS GCC;
    
    
    CREATE TEMPORARY TABLE RPM (rpm_score VARCHAR(250));
    INSERT INTO RPM(rpm_score) 
	select truncate((select count(kc)
	from raw_logs
	where eml = user
	and kc < 3500
	) / (select count(session)
	from raw_logs
	where eml = user
	) / 2 * 100,2) bolum;
    
    CREATE TEMPORARY TABLE GCC (kullanici VARCHAR(250), hiz_asimi VARCHAR(250), hiz_asimi_dk VARCHAR(250));
    INSERT INTO GCC(kullanici,hiz_asimi, hiz_asimi_dk)
    select eml, count(kff1001) hız_asimi, (100 - count(kff1001)*5/60/100)/2 hiz_asimi_dk
	from raw_logs
	where kff1001 > 120
	and eml != '0'
    and eml = user;
    