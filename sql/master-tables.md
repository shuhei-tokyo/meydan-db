# jvd-target-master-tables
## race

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | INT | PK | YES | AI | 1 |  
id_jvd | VARCHAR(20) |   | YES | UQ | 201812230605081108 | レースID(新)
jra | BOOLEAN |   | YES |   | TRUE |  
datetime | DATETIME |   | NO |   | 2018-12-23T15:40:00 | 年 + 月 + 日 + 発走時刻
num_series | VARCHAR(3) |   | NO |   | 5 | 回次
jvd_course_master_id | SMALLINT(6) |   | YES |   | 5 | jvd_course_master (場所)
count_day | VARCHAR(3) |   | NO |   | 6 | 日次
num_race | TINYINT(4) |   | YES |   | 11 | レース番号
short_name | VARCHAR(10) |   | YES |   | アイビスG3 | 略レース名
name | VARCHAR(40) |   | YES |   | アイビスサマーダッシュ | レース名 (null の場合は略レース名)
target_race_class_master_id | TINYINT(4) |   | YES |   | 195 | target_race_class_master (クラスコード)
jvd_grade_master_id | TINYINT(4) |   | NO |   | A | jvd_grade_master (グレードコード)
target_track_type_master_id | TINYINT(4) |   | YES |   | 0 | target_track_type_master (トラックコード)
jvd_track_classification_master_id | TINYINT(4) |   | YES |   | 24 | jvd_track_classification_master (トラックコード(JV) )
count_corners | TINYINT(4) |   | NO |   | 4 | コーナー回数
distance | MEDIUMINT(9) |   | YES |   | 2400 | 距離
track_section | VARCHAR(3) |   | NO |   | A | コース区分
jvd_track_condition_master_id | TINYINT(4) |   | NO |   | 2 | jvd_track_condition_master (馬場状態)
jvd_weather_master_id | TINYINT(4) |   | NO |   | 1 | jvd_weather_master (天候)
headcount | TINYINT(4) |   | YES |   | 18 | 頭数
jvd_race_breed_qualification_master_id | TINYINT(4) |   | YES |   | 14 | jvd_race_breed_qualification_master (競走種別コード)
jvd_race_mark_master_id | SMALLINT(6) |   | YES |   | N01 | jvd_race_mark_master (競走記号コード)
jvd_race_weight_regulation_master_id | TINYINT(4) |   | YES |   | 1 | jvd_race_weight_regulation_master (重量コード)
horse_num | TINYINT(4) |   | YES |   | 18 | 馬番
bracket_num | TINYINT(4) |   | YES |   | 8 | 枠番
org_horse_master_id | MEDIUMINT(9) |   | YES |   | 1000 | org_horse_master (血統登録番号)
jvd_gender_master_id | TINYINT(4) |   | YES |   | 1 | jvd_gender_master (性別)
horse_age | TINYINT(4) |   | YES |   | 3 | 年齢
org_jockey_master_id | SMALLINT(6) |   | YES |   | 100 | org_jockey_master (騎手コード)
impost | FLOAT(3,1) |   | YES |   | 59.5 | 斤量
blinker | BOOLEAN |   | YES |   | TRUE | ブリンカー (B のとき TRUE)
order_of_arrival_confirmed | TINYINT(4) |   | YES |   | 2 | 確定着順
order_of_arrival | TINYINT(4) |   | YES |   | 2 | 入線着順
jvd_accident_master_id | TINYINT(4) |   | YES |   | 0 | 異常コード
time_margin | FLOAT(4,1) |   | NO |   | -0.7 | 着差タイム
order_of_odds | TINYINT(4) |   | NO |   | 2 | 人気
odds_win | FLOAT(4,1) |   | NO |   | 111.1 | 単勝オッズ
time | FLOAT(4.1) |   | NO |   | 152.2 | 走破タイム(S)
order_of_corners_1 | TINYINT(4) |   | NO |   | 6 | 通過順1角
order_of_corners_2 | TINYINT(4) |   | NO |   | 6 | 通過順2角
order_of_corners_3 | TINYINT(4) |   | NO |   | 7 | 通過順3角
order_of_corners_4 | TINYINT(4) |   | NO |   | 4 | 通過順4角
target_running_style_master_id | TINYINT(4) |   | NO |   | 1 | target_running_style_master (脚質)
time_3f | FLOAT(4,1) |   | NO |   | 33.3 | 上がり3Fタイム
order_of_time_3f | TINYINT(4) |   | NO |   | 1 | 上がり3F順位
horse_weight | SMALLINT(6) |   | NO |   | 534 | 馬体重
horse_weight_gain_and_loss | TINYINT(4) |   | NO |   | -4 | 増減
prize | MEDIUMINT(9) |   | NO |   | 30000 | 賞金
org_trainer_master_id | SMALLINT(6) |   | YES |   | 111 | org_trainer_master (調教師コード)
org_owner_master_id | SMALLINT(6) |   | NO |   | 222 | org_owner_master (馬主名)

## jvd_course_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
id_jvd | VARCHAR(4) |   | YES | UQ | A4 | 値
name | VARCHAR(20) |   | NO |   | 京都競馬場 | 場名
name_one_word | VARCHAR(2) |   | NO |   | 京 | 場略名(1文字)
name_two_words | VARCHAR(4) |   | NO |   | 京都 | 場略名(2文字)
name_three_words | VARCHAR(6) |   | NO |   | 京都 | 場略名(3文字)
name_english | VARCHAR(32) |   | NO |   | KYOTO | 場欧字名

## jvd_grade_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | VARCHAR(4) |   | YES | UQ | A | 値
name | VARCHAR(20) |   | YES |   | G1 (平地競走) | 名称

## jvd_race_breed_qualification_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 11 | 値
name | VARCHAR(20) |   |   |   | サラブレッド系3歳 | 名称
name_four_words | VARCHAR(8) |   |   |   | サラ3才 | 略名(4文字)
name_six_words | VARCHAR(12) |   |   |   | サラ系3歳上 | 略名(6文字)
name_eight_words | VARCHAR(16) |   |   |   | サラ系3歳以上 | 略名(8文字)
name_english | VARCHAR(30) |   |   |   | THREE-YEAR-OLDS & UP | 欧字名

## jvd_race_mark_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
id_jvd | VARCHAR(4) |   | YES | UQ | A00 | 値
name | VARCHAR(20) |   |   |   | 九州産馬 | 名称
name_english | VARCHAR(20) |   |   |   | MIX | 欧字名

## jvd_race_weight_regulation_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(20) |   |   |   | ハンデ | 名称
name_english | VARCHAR(20) |   |   |   | HANDICAP | 欧字名

## jvd_track_classification_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(4) |   |   |   | 晴 | 名称
name_english | VARCHAR(20) |   |   |   | Fine | 欧字名

## jvd_track_condition_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 10 | 値
name | VARCHAR(20) |   |   |   | 平地芝左回り外回り | 名称
name_six_words | VARCHAR(12) |   |   |   | 芝・左外 | 略名(6文字)
name_english | VARCHAR(20) |   |   |   | Turf | 欧字名

## jvd_weather_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(10) |   |   |   | 良 | 名称
name_turf_english | VARCHAR(20) |   |   |   | Firm | 欧字名(芝)
name_dirt_english | VARCHAR(20) |   |   |   | Muddy | 欧字名(ダート)

## jvd_accident_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(10) |   |   |   | 出走取消 | 名称
name_two_words | VARCHAR(4) |   |   |   | 取消 | 略名(2文字)
name_english | VARCHAR(30) |   |   |   | SCRATCHED | 欧字名

## jvd_gender_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(6) |   |   |   | 牡馬 | 名称

## jvd_coat_color_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(10) |   |   |   | 黒鹿毛 | 名称
name_eiglish | VARCHAR(20) |   |   |   | chestnut | 欧字名

## jvd_belongings_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_jvd | TINYINT(4) |   | YES | UQ | 1 | 値
name | VARCHAR(10) |   |   |   | 関東 | 名称1
name_sub | VARCHAR(10) |   |   |   | 美浦 | 名称2

## target_race_class_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_target | SMALLINT(6) |   | YES | UQ | 7 | 値
name | VARCHAR(10) |   |   |   | 未勝利 | 名称

## target_track_type_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
id_target | TINYINT(4) |   | YES | UQ | 8 | 値
name | VARCHAR(10) |   |   |   | 芝・外回り | 内容

## target_running_style_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | TINYINT(4) | PK | YES | AI | 1 |  
name | VARCHAR(10) |   |   |   | 逃げ | 名称

## org_horse_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | MEDIUMINT(9) | PK | YES | AI | 1 |  
id_jvd | INT(11) |   | YES | UQ | 2015104882 | 血統登録番号
name | VARCHAR(20) |   | YES |   | ブラストワンピース | 馬名
birthday | DATE |   |   |   | 20150402 | 生年月日
jvd_coat_color_master_id | TINYINT(4) |   |   |   | 2 | jvd_coat_color_master_id (毛色)
org_sire_master_id | SMALLINT |   |   |   | 111 | org_sire_master_id (父馬名)
org_blood_mare_master_id | MEDIUMINT |   |   |   | 111 | org_blood_mare_master_id (母馬名)
org_breeder_master_id | SMALLINT |   |   |   | 111 | org_breeder_master_id (生産者)

## org_sire_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
name | VARCHAR(20) |   | YES |   | ハービンジャー | 父馬名
org_sire_line_master_id | SMALLINT(6) |   |   |   | 10 | org_sire_line_master (父タイプ)

## org_blood_mare_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | MEDIUMINT(9) | PK | YES | AI | 1 |  
name | VARCHAR(20) |   | YES |   | ツルマルワンピース | 母馬名
org_sire_master_id | SMALLINT(6) |   |   |   | キングカメハメハ | 母父名

## org_sire_line_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
name | VARCHAR(20) |   | YES |   | 二アークティック系 | 父タイプ, 母父タイプ

## org_jockey_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
id_jvd | SMALLINT(6) |   | YES | UQ | 1032 | 騎手コード
name_four_words | VARCHAR(10) |   | YES |   | 池添謙一 | 騎手
name | VARCHAR(10) |   |   |   | 池添謙一 |  
jvd_belongings_master_id | TINYINT(4) |   |   |   | 1

## org_trainer_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
id_jvd | SMALLINT(6) |   | YES | UQ | 1102 | 調教師コード
name_four_words | VARCHAR(10) |   | YES |   | 大竹正博 | 調教師
name | VARCHAR(10) |   |   |   | 大竹正博 |  
jvd_belongings_master_id | TINYINT(4) |   |   |   |   | jvd_belongings_master (所属)

## org_breeder_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
name | VARCHAR(100) |   | YES |   | ノーザンファーム | 生産者名

## org_owner_master

カラム名 | Datatype | キー | NN | EXTRA | 例 | 参照先
-- | -- | -- | -- | -- | -- | --
id | SMALLINT(6) | PK | YES | AI | 1 |  
name | VARCHAR(50) |   | YES |   | シルクレーシング | 馬主名


