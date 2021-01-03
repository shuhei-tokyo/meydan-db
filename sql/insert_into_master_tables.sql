# insert into master tables

# jvd_accident_master
select * from jvd_accident_master;
insert into jvd_accident_master (id_jvd, name, name_two_words, name_english) values
('0','','',''),
('1','出走取消','取消','SCRATCHED'),
('2','発走除外','発除','EXCLUDED BY STARTERS'),
('3','競走除外','競除','EXCLUDED BY STEWARDS'),
('4','競走中止','中止','FALL TO FINISH'),
('5','失格','失格','DISQUALIFIED'),
('6','落馬再騎乗','再騎','REMOUNT AFTER A CROPPER'),
('7','降着','降着','DISQUALIFIED AND PLACED');

# jvd_belongings_master
select * from jvd_belongings_master;
insert into jvd_belongings_master (id_jvd, name, name_sub) values
('0','',''),
('1','関東','美浦'),
('2','関西','栗東'),
('3','地方招待','招待'),
('4','外国招待','招待');

# jvd_coat_color_master
select * from jvd_coat_color_master;
insert into jvd_coat_color_master (id_jvd, name, name_english) values
('0','',''),
('1','栗毛','chestnut'),
('2','栃栗毛','dark chestnut'),
('3','鹿毛','bay'),
('4','黒鹿毛','dark bay'),
('5','青鹿毛','brown'),
('6','青毛','black'),
('7','芦毛','grey'),
('8','栗粕毛',''),
('9','鹿粕毛',''),
('10','青粕毛',''),
('11','白毛','white');

# jvd_course_master
select * from jvd_course_master;
delete from jvd_course_master where id < 1000;
alter table jvd_course_master auto_increment = 1;
insert into jvd_course_master (id_jvd, name, name_one_word, name_two_words, name_three_words, name_english) values
('0','','','','',''),
('1','札幌競馬場','札','札幌','札幌','SAPPORO'),
('2','函館競馬場','函','函館','函館','HAKODATE'),
('3','福島競馬場','福','福島','福島','FUKUSHIMA'),
('4','新潟競馬場','新','新潟','新潟','NIIGATA'),
('5','東京競馬場','東','東京','東京','TOKYO'),
('6','中山競馬場','中','中山','中山','NAKAYAMA'),
('7','中京競馬場','名','中京','中京','CHUKYO'),
('8','京都競馬場','京','京都','京都','KYOTO'),
('9','阪神競馬場','阪','阪神','阪神','HANSHIN'),
('10','小倉競馬場','小','小倉','小倉','KOKURA'),
('30','門別競馬場','門','門別','門別','MONBETSU'),
('31','北見競馬場','北','北見','北見','KITAMI'),
('32','岩見沢競馬場','岩','岩見','岩見沢','IWAMIZAWA'),
('33','帯広競馬場','帯','帯広','帯広','OBIHIRO'),
('34','旭川競馬場','旭','旭川','旭川','ASAHIKAWA'),
('35','盛岡競馬場','盛','盛岡','盛岡','MORIOKA'),
('36','水沢競馬場','水','水沢','水沢','MIZUSAWA'),
('37','上山競馬場','上','上山','上山','KAMINOYAMA'),
('38','三条競馬場','三','三条','三条','SANJYO'),
('39','足利競馬場','足','足利','足利','ASHIKAGA'),
('40','宇都宮競馬場','宇','宇都','宇都宮','UTSUNOMIYA'),
('41','高崎競馬場','高','高崎','高崎','TAKASAKI'),
('42','浦和競馬場','浦','浦和','浦和','URAWA'),
('43','船橋競馬場','船','船橋','船橋','FUNABASHI'),
('44','大井競馬場','大','大井','大井','OHI'),
('45','川崎競馬場','川','川崎','川崎','KAWASAKI'),
('46','金沢競馬場','金','金沢','金沢','KANAZAWA'),
('47','笠松競馬場','笠','笠松','笠松','KASAMATSU'),
('48','名古屋競馬場','古','名古','名古屋','NAGOYA'),
('49','紀三井寺競馬場','紀','紀三','紀三寺','KIMIIDERA'),
('50','園田競馬場','園','園田','園田','SONODA'),
('51','姫路競馬場','姫','姫路','姫路','HIMEJI'),
('52','益田競馬場','益','益田','益田','MASUDA'),
('53','福山競馬場','福','福山','福山','FUKUYAMA'),
('54','高知競馬場','高','高知','高知','KOCHI'),
('55','佐賀競馬場','佐','佐賀','佐賀','SAGA'),
('56','荒尾競馬場','荒','荒尾','荒尾','ARAO'),
('57','中津競馬場','中','中津','中津','NAKATSU'),
('58','札幌競馬場（地方競馬）','札','札幌','札幌','SAPPORO(NAR)'),
('59','函館競馬場（地方競馬）','函','函館','函館','HAKODATE(NAR)'),
('60','新潟競馬場（地方競馬）','新','新潟','新潟','NIIGATA(NAR)'),
('61','中京競馬場（地方競馬）','名','中京','中京','CHUKYO(NAR)'),
('A0','その他の外国','外','他外','他外国',''),
('A2','日本','日','日本','日本','Japan'),
('A4','アメリカ','米','アメ','アメリ','United States of America'),
('A6','イギリス','英','イギ','イギリ','Great Britain'),
('A8','フランス','仏','フラ','フラン','France'),
('B0','インド','印','イン','インド','India'),
('B2','アイルランド','愛','アイ','アイル','Ireland'),
('B4','ニュージーランド','新','ニュ','ニュー','New Zealand'),
('B6','オーストラリア','豪','オー','オース','Australia'),
('B8','カナダ','加','カナ','カナダ','Canada'),
('C0','イタリア','伊','イタ','イタリ','Italy'),
('C2','ドイツ','独','ドイ','ドイツ','Germany'),
('C5','オマーン','オ','オマ','オマー','Oman'),
('C6','イラク','イ','イラ','イラク','Iraq'),
('C7','アラブ首長国連邦','首 (ア)','ア首','アラブ','United Arab Emirates'),
('C8','シリア','叙','シリ','シリア','Syrian'),
('D0','スウェーデン','瑞','スウ','スウェ','Sweden'),
('D2','ハンガリー','洪','ハン','ハンガ','Hungary'),
('D4','ポルトガル','葡','ポル','ポルト','Portugal'),
('D6','ロシア','露','ロシ','ロシア','Russia'),
('D8','ウルグアイ','宇','ウル','ウルグ','Uruguay'),
('E0','ペルー','秘','ペル','ペルー','Peru'),
('E2','アルゼンチン','亜','アル','アルゼ','Argentina'),
('E4','ブラジル','伯','ブラ','ブラジ','Brazil'),
('E6','ベルギー','白','ベル','ベルギ','Belgium'),
('E8','トルコ','土','トル','トルコ','Turkey'),
('F0','韓国','韓','韓国','韓国','Korea'),
('F1','中国','中','中国','中国','China'),
('F2','チリ','智','チリ','チリ','Chile'),
('F8','パナマ','巴','パナ','パナマ','Panama'),
('G0','香港','香','香港','香港','Hong Kong'),
('G2','スペイン','西','スペ','スペイ','Spain'),
('H0','西ドイツ','独','西独','西独','West Germany'),
('H2','南アフリカ','南 (阿)','南ア','南アフ','South Africa'),
('H4','スイス','ス','スイ','スイス','Switzerland'),
('H6','モナコ','モ','モナ','モナコ','Monaco'),
('H8','フィリピン','比','フィ','フィリ','Philippines'),
('I0','プエルトリコ','プ','プエ','プエル','Puerto Rico'),
('I2','コロンビア','コ','コロ','コロン','Colombia'),
('I4','チェコスロバキア','チ','チェ','チェコ','Czechoslovakia'),
('I6','チェコ','チ','チェ','チェコ','Czech Republic'),
('I8','スロバキア','ス','スロ','スロバ','Slovakia'),
('J0','エクアドル','エ','エク','エクア','Ecuador'),
('J2','ギリシャ','ギ','ギリ','ギリシ','Greece'),
('J4','マレーシア','馬','マレ','マレー','Malaysia'),
('J6','メキシコ','墨','メキ','メキシ','Mexico'),
('J8','モロッコ','摩','モロ','モロッ','Morocco'),
('K0','パキスタン','基','パキ','パキス','Pakistan'),
('K2','ポーランド','波','ポー','ポーラ','Poland'),
('K4','パラグアイ','拉','パラ','パラグ','Paraguay'),
('K6','サウジアラビア','サ','サウ','サウジ','Saudi Arabia'),
('K8','キプロス','キ','キプ','キプロ','Cyprus'),
('L0','タイ','泰','タイ','タイ','Thailand'),
('L2','ウクライナ','烏','ウク','ウクラ','Ukraine'),
('L4','ベネズエラ','ベ','ベネ','ベネゼ','Venezuela'),
('L6','ユーゴスラビア','ユ','ユー','ユーゴ','Yugoslavia'),
('L8','デンマーク','丁','デン','デンマ','Denmark'),
('M0','シンガポール','嘉','シン','シンガ','Singapore'),
('M2','マカオ','澳','澳門','マカオ','Macau'),
('M4','オーストリア','墺','墺','墺国','Austria'),
('M6','ヨルダン','約','約','ヨルダ','Jordan'),
('M8','カタール','華','華','カタル','Qatar');

# jvd_gender_master
select * from jvd_gender_master;
insert into jvd_gender_master (id_jvd, name) values
('0',''),
('1','牡馬'),
('2','牝馬'),
('3','セン馬');

# jvd_grade_master
select * from jvd_grade_master;
insert into jvd_grade_master (id_jvd, name) values
('A','G1（平地競走）'),
('B','G2（平地競走）'),
('C','G3（平地競走）'),
('D','グレードのない重賞'),
('E','重賞以外の特別競走'),
('F','J･G1（障害競走）'),
('G','J･G2（障害競走）'),
('H','J･G3（障害競走）'),
('L','L（リステッド）');

# jvd_race_breed_qualification_master
delete from jvd_race_breed_qualification_master where id < 100;
alter table jvd_race_breed_qualification_master auto_increment = 1;
select * from jvd_race_breed_qualification_master;
insert into jvd_race_breed_qualification_master (id_jvd, name, name_four_words, name_six_words, name_eight_words, name_english) values
('0','','','','',''),
('11','サラブレッド系2歳','サラ２才','サラ系２歳','サラ系２歳','TWO-YEAR-OLDS'),
('12','サラブレッド系3歳','サラ３才','サラ系３歳','サラ系３歳','THREE-YEAR-OLDS'),
('13','サラブレッド系3歳以上','サラ３上','サラ系３歳上','サラ系３歳以上','THREE-YEAR-OLDS & UP'),
('14','サラブレッド系4歳以上','サラ４上','サラ系４歳上','サラ系４歳以上','FOUR-YEAR-OLDS & UP'),
('18','サラブレッド系障害3歳以上','障害３上','障害３歳上','サラ障害３歳以上','THREE-YEAR-OLDS & UP STEEPLE-CHASE'),
('19','サラブレッド系障害4歳以上','障害４上','障害４歳上','サラ障害４歳以上','FOUR-YEAR-OLDS & UP STEEPLE-CHASE'),
('21','アラブ系2歳','アラ２才','アラ系２歳','アラブ系２歳','TWO-YEAR-OLDS ANGLO-ARABS'),
('22','アラブ系3歳','アラ３才','アラ系３歳','アラブ系３歳','THREE-YEAR-OLDS ANGLO-ARABS'),
('23','アラブ系3歳以上','アラ３上','アラ系３歳上','アラブ系３歳以上','THREE-YEAR-OLDS & UP ANGLO-ARABS'),
('24','アラブ系4歳以上','アラ４上','アラ系４歳上','アラブ系４歳以上','FOUR-YEAR-OLDS & UP ANGLO-ARABS');

# jvd_race_mark_master
delete from jvd_race_mark_master where id < 200;
alter table jvd_race_mark_master auto_increment = 1;
select * from jvd_race_mark_master;
insert into jvd_race_mark_master (id_jvd, name, name_english) values
('0','',''),
('1','(指定)','DSN'),
('2','若手騎手',''),
('3','[指定]','DES'),
('4','(特指)','SD'),
('20','牝','F&M'),
('21','牝 (指定)','F&M DSN'),
('23','牝 [指定]','F&M DES'),
('24','牝 (特指)','F&M SD'),
('30','牡・ｾﾝ','C･G'),
('31','牡・ｾﾝ (指定)','C･G DSN'),
('33','牡・ｾﾝ [指定]','C･G DES'),
('34','牡・ｾﾝ (特指)','C･G SD'),
('40','牡・牝','C･F'),
('41','牡・牝 (指定)','C･F DSN'),
('43','牡・牝 [指定]','C･F DES'),
('44','牡・牝 (特指)','C･F SD'),
('A00','(混合)','MIX'),
('A01','(混合)(指定)','MIX DSN'),
('A02','(混合) 若手騎手','MIX'),
('A03','(混合)[指定]','MIX DES'),
('A04','(混合)(特指)','MIX SD'),
('A10','(混合) 牡','MIX C'),
('A11','(混合) 牡 (指定)','MIX C'),
('A13','(混合) 牡 [指定]','MIX C DES'),
('A14','(混合) 牡 (特指)','MIX C SD'),
('A20','(混合) 牝','MIX F&M'),
('A21','(混合) 牝 (指定)','MIX F&M DSN'),
('A23','(混合) 牝 [指定]','MIX F&M DES'),
('A24','(混合) 牝 (特指)','MIX F&M SD'),
('A30','(混合) 牡・ｾﾝ','MIX C･G'),
('A31','(混合) 牡・ｾﾝ (指定)','MIX C･G DSN'),
('A33','(混合) 牡・ｾﾝ [指定]','MIX C･G DES'),
('A34','(混合) 牡・ｾﾝ (特指)','MIX C･G SD'),
('A40','(混合) 牡・牝','MIX C･F'),
('A41','(混合) 牡・牝 (指定)','MIX C･F DSN'),
('B00','(父)','(D)'),
('B01','(父)(指定)','(D) DSN'),
('B03','(父)[指定]','(D) DES'),
('B04','(父)(特指)','(D) SD'),
('C00','(市)','(A)'),
('C01','(市)(指定)','(A) DSN'),
('C03','(市)[指定]','(A) DES'),
('C04','(市)(特指)','(A) SD'),
('D00','(抽)','(S)'),
('D01','(抽)(指定)','(S) DSN'),
('D03','(抽)[指定]','(S) DES'),
('E00','[抽]',''),
('E01','[抽](指定)','DSN'),
('E03','[抽][指定]','DES'),
('F00','(市)(抽)','(A)(S)'),
('F01','(市)(抽)(指定)','(A)(S) DSN'),
('F03','(市)(抽)[指定]','(A)(S) DES'),
('F04','(市)(抽)(特指)','(A)(S) SD'),
('G00','(抽) 関西配布馬',''),
('G01','(抽) 関西配布馬 (指定)','DSN'),
('G03','(抽) 関西配布馬 [指定]','DES'),
('H00','(抽) 関東配布馬',''),
('H01','(抽) 関東配布馬 (指定)','DSN'),
('I00','[抽] 関西配布馬',''),
('I01','[抽] 関西配布馬 (指定)','DSN'),
('I03','[抽] 関西配布馬 [指定]','DES'),
('J00','[抽] 関東配布馬',''),
('J01','[抽] 関東配布馬 (指定)','DSN'),
('K00','(市)(抽) 関西配布馬',''),
('K01','(市)(抽) 関西配布馬 (指定)','DSN'),
('K03','(市)(抽) 関西配布馬 [指定]','DES'),
('L00','(市)(抽) 関東配布馬',''),
('L01','(市)(抽) 関東配布馬 (指定)','DSN'),
('L03','(市)(抽) 関東配布馬 [指定]','DES'),
('M00','九州産馬',''),
('M01','九州産馬 (指定)','DSN'),
('M03','九州産馬 [指定]','DES'),
('M04','九州産馬 (特指)','SD'),
('N00','(国際)','INT'),
('N01','(国際)(指定)','INT DSN'),
('N03','(国際)[指定]','INT DES'),
('N04','(国際)(特指)','INT SD'),
('N20','(国際) 牝','INT F&M'),
('N21','(国際) 牝 (指定)','INT F&M DSN'),
('N23','(国際) 牝 [指定]','INT F&M DES'),
('N24','(国際) 牝 (特指)','INT F&M SD'),
('N30','(国際) 牡・ｾﾝ','INT C･G'),
('N31','(国際) 牡・ｾﾝ (指定)','INT C･G DSN'),
('N40','(国際) 牡・牝','INT C･F'),
('N41','(国際) 牡・牝 (指定)','INT C･F DSN'),
('N44','(国際) 牡・牝 (特指)','INT C･F SD');

# jvd_race_weight_regulation_master
select * from jvd_race_weight_regulation_master;
insert into jvd_race_weight_regulation_master (id_jvd, name, name_english) values
('0','',''),
('1','ハンデ','HANDICAP'),
('2','別定','SPECIAL WEIGHT'),
('3','馬齢','WEIGHT FOR AGE'),
('4','定量','SPECIAL WEIGHT');

# jvd_track_classification_master
select * from jvd_track_classification_master;
insert into jvd_track_classification_master (id_jvd, name, name_six_words, name_english) values
('0','','',''),
('10','平地 芝   直線','芝・直','Turf Str.'),
('11','平地 芝   左回り','芝・左','Turf'),
('12','平地 芝   左回り  外回り','芝・左外','Turf'),
('13','平地 芝   左回り  内－外回り','芝・左内→外','Turf'),
('14','平地 芝   左回り  外－内回り','芝・左外→内','Turf'),
('15','平地 芝   左回り  内２周','芝・左内２周','Turf'),
('16','平地 芝   左回り  外２周','芝・左外２周','Turf'),
('17','平地 芝   右回り','芝・右','Turf'),
('18','平地 芝   右回り  外回り','芝・右外','Turf'),
('19','平地 芝   右回り  内－外回り','芝・右内→外','Turf'),
('20','平地 芝   右回り  外－内回り','芝・右外→内','Turf'),
('21','平地 芝   右回り  内２周','芝・右内２周','Turf'),
('22','平地 芝   右回り  外２周','芝・右外２周','Turf'),
('23','平地 ダート  左回り','ダート・左','Dirt'),
('24','平地 ダート  右回り','ダート・右','Dirt'),
('25','平地 ダート 左回り 内回り','ダート・左内','Dirt'),
('26','平地 ダート 右回り 外回り','ダート・右外','Dirt'),
('27','平地 サンド 左回り','サンド・左','Sand'),
('28','平地 サンド 右回り','サンド・右','Sand'),
('29','平地 ダート  直線','ダート・直','Dirt Str.'),
('51','障害 芝  襷','芝・襷','Turf'),
('52','障害 芝 ダート','芝→ダート','Turf→Dirt'),
('53','障害 芝・左','芝・左','Turf'),
('54','障害 芝','芝','Turf'),
('55','障害 芝  外回り','芝・外','Turf'),
('56','障害 芝  外－内回り','芝・外→内','Turf'),
('57','障害 芝  内－外回り','芝・内→外','Turf'),
('58','障害 芝  内２周以上','芝・内２周','Turf'),
('59','障害 芝  外２周以上','芝・外２周','Turf');

# jvd_track_condition_master
select * from jvd_track_condition_master;
insert into jvd_track_condition_master (id_jvd, name, name_turf_english, name_dirt_english) values
('0','','',''),
('1','良','Firm','Standard'),
('2','稍重','Good','Good'),
('3','重','Yielding','Muddy'),
('4','不良','Soft','Sloppy');

# jvd_weather_master
select * from jvd_weather_master;
insert into jvd_weather_master (id_jvd, name, name_english) values
('0','',''),
('1','晴','Fine'),
('2','曇','Cloudy'),
('3','雨','Rainy'),
('4','小雨','Drizzle'),
('5','雪','Snow'),
('6','小雪','Light Snow');

# target_race_class_master
select * from target_race_class_master;
insert into target_race_class_master (id_target, name) values
('7','未勝利'),
('11','未出走'),
('15','新馬'),
('19','400万下'),
('23','500万下'),
('39','900万下'),
('43','1000万下'),
('63','1500万下'),
('67','1600万下'),
('131','重賞以外のオープン'),
('147','グレード無し重賞'),
('163','G3'),
('179','G2'),
('195','G1');

# target_running_style_master
select * from target_running_style_master;
insert into target_running_style_master (name) values
('逃げ'),
('先行'),
('差し'),
('追込'),
('マクリ'),
('中団'),
('後方'),
('その他');

# target_track_type_master
select * from target_track_type_master;
insert into target_track_type_master (id_target, name) values
('0','芝'),
('1','ダート'),
('2','障害・直線・芝'),
('3','障害・直線・ダート'),
('8','芝・外回り');
