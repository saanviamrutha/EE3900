--Exercise 4
--1
select count(ilkid)
from players
group by position;

--2
create view regular_seasons(year,sum_gp) as
select year,sum(gp) as sum_gp
from player_regular_season
group by year;

create view playoffs(year,sum_gp) as
select year,sum(gp) as sum_gp
from player_playoffs
group by year;

select playoffs.year from regular_seasons,playoffs
where regular_seasons.year=playoffs.year
order by (regular_seasons.sum_gp+playoffs.sum_gp) desc LIMIT 0,5;

--3
--part1
ALTER TABLE player_regular_season_career 
ADD eff INT NULL;

UPDATE player_regular_season_career
 SET eff = pts+reb+asts+stl+blk-((fga-fgm)+(fta-ftm)+tumover);

--part2
create view [eff_players] as
select ilkid,sum(gp) as total_gp,sum(eff) as total_eff
from player_regular_season_career
group by ilkid
order by total_eff desc;

select * from [eff_players]
LIMIT 0,10;

--4
