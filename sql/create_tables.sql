# race
create table race (
    id INT auto_increment primary key,
    id_jvd VARCHAR(20) unique not null,
    jra BOOLEAN not null,
    datetime DATETIME,
    num_series VARCHAR(3),
    jvd_course_master_id SMALLINT(6) not null,
    count_day VARCHAR(3),
    num_race TINYINT(4) not null,
    short_name VARCHAR(10) not null,
    name VARCHAR(40) not null,
    target_race_class_master_id TINYINT(4) not null,
    jvd_grade_master_id TINYINT(4),
    target_track_type_master_id TINYINT(4) not null,
    jvd_track_classification_master_id TINYINT(4) not null,
    count_corners TINYINT(4),
    distance MEDIUMINT(9) not null,
    track_section VARCHAR(3),
    jvd_track_condition_master_id TINYINT(4),
    jvd_weather_master_id TINYINT(4),
    headcount TINYINT(4) not null,
    jvd_race_breed_qualification_master_id TINYINT(4) not null,
    jvd_race_mark_master_id SMALLINT(6) not null,
    jvd_race_weight_regulation_master_id TINYINT(4) not null,
    horse_num TINYINT(4) not null,
    bracket_num TINYINT(4) not null,
    org_horse_master_id MEDIUMINT(9) not null,
    jvd_gender_master_id TINYINT(4) not null,
    horse_age TINYINT(4) not null,
    org_jockey_master_id SMALLINT(6) not null,
    impost FLOAT(3,1) not null,
    blinker BOOLEAN not null,
    order_of_arrival_confirmed TINYINT(4) not null,
    order_of_arrival TINYINT(4) not null,
    jvd_accident_master_id TINYINT(4) not null,
    time_margin FLOAT(4,1),
    order_of_odds TINYINT(4),
    odds_win FLOAT(4,1),
    time FLOAT(4.1),
    order_of_corners_1 TINYINT(4),
    order_of_corners_2 TINYINT(4),
    order_of_corners_3 TINYINT(4),
    order_of_corners_4 TINYINT(4),
    target_running_style_master_id TINYINT(4),
    time_3f FLOAT(4,1),
    order_of_time_3f TINYINT(4),
    horse_weight SMALLINT(6),
    horse_weight_gain_and_loss TINYINT(4),
    prize MEDIUMINT(9),
    org_trainer_master_id SMALLINT(6) not null,
    org_owner_master_id SMALLINT(6)
);

# jvd_course_master
create table jvd_course_master (
    id SMALLINT(6) auto_increment primary key,
    id_jvd VARCHAR(4) unique not null,
    name VARCHAR(20),
    name_one_word VARCHAR(2),
    name_two_words VARCHAR(4),
    name_three_words VARCHAR(6),
    name_english VARCHAR(32)
);

# jvd_grade_master
create table jvd_grade_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd VARCHAR(4) unique not null,
    name VARCHAR(20) not null
);

# jvd_race_breed_qualification_master
create table jvd_race_breed_qualification_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(20),
    name_four_words VARCHAR(8),
    name_six_words VARCHAR(12),
    name_eight_words VARCHAR(16),
    name_english VARCHAR(30)
);

# jvd_race_mark_master
create table jvd_race_mark_master (
    id SMALLINT(6) auto_increment primary key,
    id_jvd VARCHAR(4) unique not null,
    name VARCHAR(20),
    name_english VARCHAR(20)
);

# jvd_race_weight_regulation_master
create table jvd_race_weight_regulation_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(20),
    name_english VARCHAR(20)
);

# jvd_track_classification_master
create table jvd_track_classification_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(20),
    name_six_words VARCHAR(12),
    name_english VARCHAR(20)
);

# jvd_track_condition_master
create table jvd_track_condition_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(10),
    name_turf_english VARCHAR(20),
    name_dirt_english VARCHAR(20)
);

# jvd_weather_master
create table jvd_weather_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(4),
    name_english VARCHAR(20)
);

# jvd_accident_master
create table jvd_accident_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(10),
    name_two_words VARCHAR(4),
    name_english VARCHAR(30)
);

# jvd_gender_master
create table jvd_gender_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(6)
);

# jvd_coat_color_master
create table jvd_coat_color_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(10),
    name_eiglish VARCHAR(20)
);

# jvd_belongings_master
create table jvd_belongings_master (
    id TINYINT(4) auto_increment primary key,
    id_jvd TINYINT(4) unique not null,
    name VARCHAR(10),
    name_sub VARCHAR(10)
);

# target_race_class_master
create table target_race_class_master (
    id TINYINT(4) auto_increment primary key,
    id_target SMALLINT(6) unique not null,
    name VARCHAR(10)
);

# target_track_type_master
create table target_track_type_master (
    id TINYINT(4) auto_increment primary key,
    id_target TINYINT(4) unique not null,
    name VARCHAR(10)
);

# target_running_style_master
create table target_running_style_master (
    id TINYINT(4) auto_increment primary key,
    name VARCHAR(10)
);

# org_horse_master
create table org_horse_master (
    id MEDIUMINT(9) auto_increment primary key,
    id_jvd INT(11) unique not null,
    name VARCHAR(20) not null,
    birthday DATE,
    jvd_coat_color_master_id TINYINT(4),
    org_sire_master_id SMALLINT,
    org_blood_mare_master_id MEDIUMINT,
    org_breeder_master_id SMALLINT
);

# org_sire_master
create table org_sire_master (
    id SMALLINT(6) auto_increment primary key,
    name VARCHAR(20) not null,
    org_sire_line_master_id SMALLINT(6)
);

# org_blood_mare_master
create table org_blood_mare_master (
    id MEDIUMINT(9) auto_increment primary key,
    name VARCHAR(20) not null,
    org_sire_master_id SMALLINT(6),
    org_sire_line_master_id SMALLINT(6)
);

# org_sire_line_master
create table org_sire_line_master (
    id SMALLINT(6) auto_increment primary key,
    name VARCHAR(20) not null
);

# org_jockey_master
create table org_jockey_master (
    id SMALLINT(6) auto_increment primary key,
    id_jvd SMALLINT(6) unique not null,
    name_four_words VARCHAR(10) not null,
    name VARCHAR(10),
    jvd_belongings_master_id TINYINT(4)
);

# org_trainer_master
create table org_trainer_master (
    id SMALLINT(6) auto_increment primary key,
    id_jvd SMALLINT(6) unique not null,
    name_four_words VARCHAR(10) not null,
    name VARCHAR(10),
    jvd_belongings_master_id TINYINT(4)
);

# org_breeder_master
create table org_breeder_master (
    id SMALLINT(6) auto_increment primary key,
    name VARCHAR(100) not null
);

# org_owner_master
create table org_owner_master (
    id SMALLINT(6) auto_increment primary key,
    name VARCHAR(50) not null
);


