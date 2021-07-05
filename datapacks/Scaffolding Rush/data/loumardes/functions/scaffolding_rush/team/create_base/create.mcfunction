execute as @e[tag=baseTeam] at @s run function loumardes:scaffolding_rush/team/create_base/load_structure

execute at @e[tag=baseTeam,name=Blue,limit=1] run tp @a[team=blue] ~ 5 ~
execute at @e[tag=baseTeam,name=Green,limit=1] run tp @a[team=green] ~ 5 ~
execute at @e[tag=baseTeam,name=Red,limit=1] run tp @a[team=red] ~ 5 ~
execute at @e[tag=baseTeam,name=Yellow,limit=1] run tp @a[team=yellow] ~ 5 ~

kill @e[tag=baseTeam]
execute as @a run function loumardes:scaffolding_rush/team/base_egg/clear_egg
