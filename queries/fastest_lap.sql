with fastest_lap as(
select circuits.name as circuit,
drivers.code as driver,
lap_times.`time` as lap_time,
rank() over(
partition by circuits.name
order by lap_times.`time`) as lap_rank
from lap_times
join races on lap_times.raceId=races.raceId
join circuits on races.circuitId=circuits.circuitId
join drivers on lap_times.driverId=drivers.driverId
)
select fastest_lap.circuit,
group_concat(distinct fastest_lap.driver) as drivers,
min(fastest_lap.lap_time) as lap_time
from fastest_lap
where lap_rank=1
group by fastest_lap.circuit
order by circuit;