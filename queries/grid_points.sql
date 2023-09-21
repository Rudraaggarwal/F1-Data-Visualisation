select results.grid,avg(results.points),
case when grid%2=0 then "Right"
else "Left" end as grid_column,
Round(grid/2,0) as grid_row,
circuits.name
from results
join races on races.raceId=results.raceId
join circuits on circuits.circuitId=races.circuitId
where grid>0 and grid<=20
group by results.grid,circuits.name order by results.grid asc;