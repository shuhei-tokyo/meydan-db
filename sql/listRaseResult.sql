#RaceResultList
set @name = "%毎日王冠%";
set @datetime = "2020%";

#org_race_master_id を取得
select * from org_race_master
where name like @name
and datetime like @datetime;

#race_info
set @org_race_master_id = 2020101105040211;
select
	org_race_master.datetime,
    jvd_course_master.name_two_words as course_name,
    org_race_master.num_series,
    org_race_master.count_day,
    org_race_master.num_race,
    jvd_weather_master.name as weather,
    jvd_track_condition_master.name as track_condition,
    org_race_master.name,
    org_race_master.short_name,
    jvd_grade_master.name as grade,
    target_race_class_master.name as class,
    target_track_type_master.name as track_type,
    jvd_race_weight_regulation_master.name as race_weight_regulation,
    jvd_race_breed_qualification_master.name as race_breed_qualification,
    jvd_race_mark_master.name as race_mark,
    race_result.time
from race_result
left join org_race_master
	on race_result.org_race_master_id = org_race_master.id
left join jvd_course_master
	on org_race_master.jvd_course_master_id = jvd_course_master.id
left join jvd_weather_master
	on org_race_master.jvd_weather_master_id = jvd_weather_master.id
left join jvd_track_condition_master
	on org_race_master.jvd_track_condition_master_id = jvd_track_condition_master.id
left join jvd_grade_master
	on org_race_master.jvd_grade_master_id = jvd_grade_master.id
left join target_race_class_master
	on org_race_master.target_race_class_master_id = target_race_class_master.id
left join target_track_type_master
	on org_race_master.target_track_type_master_id = target_track_type_master.id
left join jvd_race_weight_regulation_master
	on org_race_master.jvd_race_weight_regulation_master_id = jvd_race_weight_regulation_master.id
left join jvd_race_breed_qualification_master
	on org_race_master.jvd_race_breed_qualification_master_id = jvd_race_breed_qualification_master.id
left join jvd_race_mark_master
	on org_race_master.jvd_race_mark_master_id = jvd_race_mark_master.id
where race_result.org_race_master_id = @org_race_master_id
order by race_result.order_of_arrival;

#race_result
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
where race_result.org_race_master_id = @org_race_master_id
order by race_result.order_of_arrival;


