CREATE TABLE teams (
        team CHAR(3) NOT NULL,
        location VARCHAR(20) NOT NULL,
        name VARCHAR(20),
        leag CHAR(1) NOT NULL,
        PRIMARY KEY (team, leag));

CREATE TABLE players(
ilkid CHAR(9) NOT NULL,
firstname VARCHAR(20),
lastname VARCHAR(20),
position CHAR(1) NOT NULL,
firstseason CHAR(4),
lastseason CHAR(4),
h_feet INT,
h_inches INT,
weight INT,
college VARCHAR(20),
birthdate VARCHAR(20),
PRIMARY KEY(ilkid));

CREATE TABLE player_regular_season(
ilkid CHAR(9) NOT NULL,
year CHAR(4) NOT NULL,
firstname VARCHAR(20),
lastname VARCHAR(20),
team CHAR(3),
leag CHAR(1),
gp INT,
minutes INT,
pts INT,
oreb INT,
dreb INT,
reb INT, 
asts INT,
stl INT,
blk INT,
tumover INT,
pf INT,
fga INT,
fgm INT,
fta INT,
ftm INT,
tpa INT,
tpm INT,
PRIMARY KEY(ilkid,year,team));

CREATE TABLE player_regular_season_career(
ilkid CHAR(9) NOT NULL,
firstname VARCHAR(20),
lastname VARCHAR(20),
leag CHAR(1),
gp INT,
minutes INT,
pts INT,
oreb INT,
dreb INT,
reb INT, 
asts INT,
stl INT,
blk INT,
tumover INT,
pf INT,
fga INT,
fgm INT,
fta INT,
ftm INT,
tpa INT,
tpm INT,
PRIMARY KEY(ilkid,gp,minutes));

CREATE TABLE player_playoffs(
ilkid CHAR(9) NOT NULL,
year CHAR(4) NOT NULL,
firstname VARCHAR(20),
lastname VARCHAR(20),
team CHAR(3),
leag CHAR(1),
gp INT,
minutes INT,
pts INT,
dreb INT,
oreb INT,
reb INT,
asts INT,
stl INT,
blk INT,
tumover INT,
pf INT,
fga INT,
fgm INT,
fta INT,
ftm INT,
tpa INT,
tpm INT,
PRIMARY KEY(ilkid,year,team));

CREATE TABLE player_playoffs_career(
ilkid CHAR(9) NOT NULL,
firstname VARCHAR(20),
lastname VARCHAR(20),
leag CHAR(1),
gp INT,
minutes INT,
pts INT,
dreb INT,
oreb INT,
reb INT,
asts INT,
stl INT,
blk INT,
tumover INT,
pf INT,
fga INT,
fgm INT,
fta INT,
ftm INT,
tpa INT,
tpm INT,
PRIMARY KEY(ilkid,gp,minutes));

CREATE TABLE coaches_season(
coachid CHAR(9) NOT NULL,
year CHAR(4),
yr_order INT,
firstname VARCHAR(20),
lastname VARCHAR(20),
season_win INT,
season_loss INT,
playoff_win INT,
playoff_loss INT,
team CHAR(3),
PRIMARY KEY(coachid,season_win,season_loss));


CREATE TABLE coaches_career(
coachid CHAR(9),
firstname VARCHAR(20),
lastname VARCHAR(20),
season_win INT,
season_loss INT,
playoff_win INT,
playoff_loss INT,
PRIMARY KEY(coachid,season_win));


