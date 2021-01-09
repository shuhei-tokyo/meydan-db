#RaceResultList
set @name = "%毎日王冠%";
set @datetime = "2020%";

#org_race_master_id を取得
select * from org_race_master
where name like @name
and datetime like @datetime;

#raceResult
set @org_race_master_id = 2020101105040211;
select
	race_result.horse_num,
    race_result.bracket_num,
    org_horse_master.name as horse_name,
    jvd_gender_master.name as horse_gender,
    race_result.horse_age,
    org_jockey_master.name as jockey_name,
    race_result.impost,
    org_trainer_master.name as trainer_name,
    race_result.order_of_corners_1,
    race_result.order_of_corners_2,
    race_result.order_of_corners_3,
    race_result.order_of_corners_4,
    race_result.order_of_arrival,
    race_result.order_of_arrival_confirmed,
    jvd_accident_master.name_two_words as accident_name,
    race_result.time_3f,
    race_result.order_of_time_3f,
    race_result.odds_win,
	race_result.time_margin
from race_result
	left join org_horse_master
		on race_result.org_horse_master_id = org_horse_master.id
	left join jvd_gender_master
		on race_result.jvd_gender_master_id = jvd_gender_master.id
	left join org_jockey_master
		on race_result.org_jockey_master_id = org_jockey_master.id
	left join org_trainer_master
		on race_result.org_trainer_master_id = org_trainer_master.id
	left join jvd_accident_master
		on race_result.jvd_accident_master_id = jvd_accident_master.id
where org_race_master_id = @org_race_master_id
order by race_result.order_of_arrival;


