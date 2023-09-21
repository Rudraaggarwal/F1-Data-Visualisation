use f1;
select drivers.`code`,constructors.`name`,sum(results.points),circuits.`name` from results
join races on races.raceId=results.raceId
join drivers on drivers.driverId=results.driverId
join constructors on constructors.constructorId=results.constructorId
join circuits on circuits.circuitId=races.circuitId
where races.`year`>=2010
group by drivers.`code`,constructors.`name`,circuits.`name`;
select * from results;
