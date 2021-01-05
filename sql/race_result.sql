# race_result
select
	org_race_master.datetime,
    org_race_master.id,
    org_race_master.num_series,
    jvd_course_master.name_two_words,
    org_race_master.count_day,
    org_race_master.num_race,
    org_race_master.short_name,
    org_race_master.name,
    target_race_class_master.name,
    jvd_grade_master.name,
    jvd_track_classification_master.name,
    org_race_master.count_corners,
    org_race_master.distance,
    org_race_master.track_section,
    jvd_weather_master.name,
    org_race_master.headcount,
    jvd_race_breed_qualification_master.name,
    jvd_race_mark_master.name,
    jvd_race_weight_regulation_master.name,
    race_result.id_jvd,
    race_result.horse_num,
    race_result.bracket_num,
    joined_org_horse_master.name,
    jvd_gender_master.name,
    race_result.horse_age,
    org_jockey_master.name,
    race_result.impost,
    race_result.blinker,
    race_result.order_of_arrival,
    race_result.order_of_arrival_confirmed,
    jvd_accident_master.name,
    race_result.time_margin,
    race_result.order_of_odds,
    race_result.odds_win,
    race_result.time,
    race_result.order_of_corners_1,
    race_result.order_of_corners_2,
    race_result.order_of_corners_3,
    race_result.order_of_corners_4,
    target_running_style_master.name,
    race_result.time_3f,
    race_result.order_of_time_3f,
    race_result.horse_weight,
    race_result.horse_weight_gain_and_loss,
    joined_org_trainer_master.name,
    joined_org_trainer_master. jvd_belongings_master_name_sub,
    race_result.prize,
    org_owner_master.name,
    joined_org_horse_master.org_breeder_master_name,
    joined_org_horse_master.org_sire_master_name,
    joined_org_horse_master.org_blood_mare_master_name,
    joined_org_horse_master.org_blood_mare_master_org_sire_master_name,
    joined_org_horse_master.org_sire_master_org_sire_line_master_name,
    joined_org_horse_master.org_blood_mare_master_org_sire_line_master_name
from race_result
	left join org_race_master
		on race_result.org_race_master_id = org_race_master.id
	left join jvd_course_master
		on org_race_master.jvd_course_master_id = jvd_course_master.id
	left join target_race_class_master
		on org_race_master.target_race_class_master_id = target_race_class_master.id
	left join jvd_grade_master
		on org_race_master.jvd_grade_master_id = jvd_grade_master.id
	left join jvd_track_classification_master
		on org_race_master.jvd_track_classification_master_id = jvd_track_classification_master.id
	left join jvd_weather_master
		on org_race_master.jvd_weather_master_id = jvd_weather_master.id
	left join jvd_race_breed_qualification_master
		on org_race_master.jvd_race_breed_qualification_master_id = jvd_race_breed_qualification_master.id
	left join jvd_race_mark_master
		on org_race_master.jvd_race_mark_master_id = jvd_race_mark_master.id
	left join jvd_race_weight_regulation_master
		on org_race_master.jvd_race_weight_regulation_master_id = jvd_race_weight_regulation_master.id
	left join jvd_gender_master
		on race_result.jvd_gender_master_id = jvd_gender_master.id
	left join org_jockey_master
		on race_result.org_jockey_master_id = org_jockey_master.id
	left join jvd_accident_master
		on race_result.jvd_accident_master_id = jvd_accident_master.id
	left join target_running_style_master
		on race_result.target_running_style_master_id = target_running_style_master.id
	left join org_owner_master
		on race_result.org_owner_master_id = org_owner_master.id
	left join (
		select
			org_horse_master.id,
			org_horse_master.name,
			org_horse_master.birthday,
			jvd_coat_color_master.name as jvd_coat_color_master_name,
			org_breeder_master.name as org_breeder_master_name,
			joined_org_sire_master.name as org_sire_master_name,
			joined_org_sire_master.org_sire_line_master_name as org_sire_master_org_sire_line_master_name,
			joined_org_blood_mare_master.name as org_blood_mare_master_name,
			joined_org_blood_mare_master.org_sire_master_name as org_blood_mare_master_org_sire_master_name,
			joined_org_blood_mare_master.org_sire_line_master_name as org_blood_mare_master_org_sire_line_master_name
		from org_horse_master
			left join jvd_coat_color_master
				on org_horse_master.jvd_coat_color_master_id = jvd_coat_color_master.id
			left join org_breeder_master
				on org_horse_master.org_breeder_master_id = org_breeder_master.id
			left join (
				select
					org_sire_master.id,
					org_sire_master.name,
					org_sire_line_master.name as org_sire_line_master_name
				from org_sire_master
					left join org_sire_line_master
						on org_sire_master.org_sire_line_master_id = org_sire_line_master.id
			) as joined_org_sire_master
				on org_horse_master.org_sire_master_id = joined_org_sire_master.id
			left join (
				select 
					org_blood_mare_master.id,
					org_blood_mare_master.name,
					org_sire_master.name as org_sire_master_name,
					org_sire_line_master.name as org_sire_line_master_name
				from org_blood_mare_master
					left join  org_sire_master
						on org_blood_mare_master.org_sire_master_id = org_sire_master.id
					left join org_sire_line_master
						on org_sire_master.org_sire_line_master_id = org_sire_line_master.id
			) as joined_org_blood_mare_master
				on org_horse_master.org_blood_mare_master_id = joined_org_blood_mare_master.id
    ) as joined_org_horse_master
		on race_result.org_horse_master_id = joined_org_horse_master.id
	left join (
		select
			org_trainer_master.id,
			org_trainer_master.name,
			jvd_belongings_master.name_sub as jvd_belongings_master_name_sub
		from org_trainer_master
			left join jvd_belongings_master
				on org_trainer_master.jvd_belongings_master_id = jvd_belongings_master.id
    ) as joined_org_trainer_master
		on race_result.org_trainer_master_id = joined_org_trainer_master.id
	where race_result.org_race_master_id = 2020020905010411
    order by race_result.order_of_arrival_confirmed;

#joined_org_horse_master
select
	org_horse_master.id,
    org_horse_master.name,
    org_horse_master.birthday,
    jvd_coat_color_master.name as jvd_coat_color_master_name,
    org_breeder_master.name as org_breeder_master_name,
    joined_org_sire_master.name as org_sire_master_name,
    joined_org_sire_master.org_sire_line_master_name as org_sire_master_org_sire_line_master_name,
    joined_org_blood_mare_master.name as org_blood_mare_master_name,
    joined_org_blood_mare_master.org_sire_master_name as org_blood_mare_master_org_sire_master_name,
    joined_org_blood_mare_master.org_sire_line_master_name as org_blood_mare_master_org_sire_line_master_name
from org_horse_master
	left join jvd_coat_color_master
		on org_horse_master.jvd_coat_color_master_id = jvd_coat_color_master.id
	left join org_breeder_master
		on org_horse_master.org_breeder_master_id = org_breeder_master.id
	left join (
		select
			org_sire_master.id,
			org_sire_master.name,
			org_sire_line_master.name as org_sire_line_master_name
		from org_sire_master
			left join org_sire_line_master
				on org_sire_master.org_sire_line_master_id = org_sire_line_master.id
    ) as joined_org_sire_master
		on org_horse_master.org_sire_master_id = joined_org_sire_master.id
	left join (
		select 
			org_blood_mare_master.id,
			org_blood_mare_master.name,
			org_sire_master.name as org_sire_master_name,
			org_sire_line_master.name as org_sire_line_master_name
		from org_blood_mare_master
			left join  org_sire_master
				on org_blood_mare_master.org_sire_master_id = org_sire_master.id
			left join org_sire_line_master
				on org_sire_master.org_sire_line_master_id = org_sire_line_master.id
    ) as joined_org_blood_mare_master
		on org_horse_master.org_blood_mare_master_id = joined_org_blood_mare_master.id; 
        
#joined_org_sire_master
select
	org_sire_master.id,
    org_sire_master.name as org_sire_master_name,
    org_sire_line_master.name as org_sire_line_master_name
from org_sire_master
	left join org_sire_line_master
		on org_sire_master.org_sire_line_master_id = org_sire_line_master.id;
        
#joined_blood_mare_master
select 
	org_blood_mare_master.id,
    org_blood_mare_master.name,
    org_sire_master.name as org_sire_master_name,
    org_sire_line_master.name as org_sire_line_master_name
from org_blood_mare_master
	left join  org_sire_master
		on org_blood_mare_master.org_sire_master_id = org_sire_master.id
	left join org_sire_line_master
		on org_sire_master.org_sire_line_master_id = org_sire_line_master.id;
        

#joined_org_jockey_master


#joined_org_trainer_master
select
	org_trainer_master.id,
    org_trainer_master.name,
    jvd_belongings_master.name_sub as jvd_belongings_master_name_sub
from org_trainer_master
	left join jvd_belongings_master
		on org_trainer_master.jvd_belongings_master_id = jvd_belongings_master.id;
        
        
        
        
        
        
        
        
        
        
