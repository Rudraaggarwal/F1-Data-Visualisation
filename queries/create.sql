create database f1;
use f1;
CREATE TABLE circuits 
(
    circuitId	INT PRIMARY KEY,
    circuitRef	VARCHAR(512),
    name	VARCHAR(512),
    location	VARCHAR(512),
    country	VARCHAR(512),
    lat	DOUBLE,
    lng	DOUBLE,
    alt	INT,
    url	VARCHAR(512)
);
drop table circuits;
select * from circuits;
--------------------------------
CREATE TABLE constructors 
(
    constructorId	INT primary key,
    constructorRef	VARCHAR(512),
    name	VARCHAR(512),
    nationality	VARCHAR(512),
    url	VARCHAR(512)
);
select * from constructors;

-----------------------------------------
drop table drivers;
CREATE TABLE drivers 
(
    driverId	INT primary key,
    driverRef	VARCHAR(512),
    number	VARCHAR(512),
    code	VARCHAR(512),
    forename	VARCHAR(512),
    surname	VARCHAR(512),
    dob	VARCHAR(512),
    nationality	VARCHAR(512),
    url	VARCHAR(512)
);
select * from drivers;
--------------------------------------------
CREATE TABLE lap_times 
(
    raceId	INT,
    driverId	INT,
    lap	INT,
    position	INT,
    time	VARCHAR(512),
    milliseconds	INT
);
drop table lap_times;
select * from lap_times;
---------------------------------------------
CREATE TABLE results 
(
    resultId	INT primary key,
    raceId	INT,
    driverId	INT,
    constructorId	INT,
    number	INT,
    grid	INT,
    position	VARCHAR(512),
    positionText	VARCHAR(512),
    positionOrder	INT,
    points	VARCHAR(512),
    laps	INT,
    time	VARCHAR(512),
    milliseconds	VARCHAR(512),
    fastestLap	VARCHAR(512),
    ranks VARCHAR(512),
    fastestLapTime	VARCHAR(512),
    fastestLapSpeed	VARCHAR(512),
    statusId	INT
);
drop table results;
select * from results;


