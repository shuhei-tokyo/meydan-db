select * from org_race_master;
select * from org_horse_master;
select * from jvd_track_condition_master;

#search/race
set @name = "%新聞%";
set @dateFrom = "2020-01-01";
set @dateTo = "2020-12-31";

select * from org_race_master
where org_race_master.name like @name
and org_race_master.datetime between @dateFrom and @dateTo
and org_race_master.jra = 1;