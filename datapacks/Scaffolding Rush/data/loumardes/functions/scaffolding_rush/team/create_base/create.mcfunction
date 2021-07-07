execute as @e[tag=baseTeam] at @s run function loumardes:scaffolding_rush/team/create_base/load_structure

execute at @e[tag=baseTeam,name=Blue,limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name=Green,limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name=Red,limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name=Yellow,limit=1] run teleport @a[team=yellow] ~ 4 ~

scoreboard players set TeamBaseEgg constant 0
kill @e[tag=baseTeam]
execute as @a run function loumardes:scaffolding_rush/team/base_egg/clear_egg
