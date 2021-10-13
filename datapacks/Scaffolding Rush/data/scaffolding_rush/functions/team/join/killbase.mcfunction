execute unless entity @a[team=blue] run kill @e[type=minecraft:armor_stand,name="Blue",tag=baseTeam]
execute unless entity @a[team=blue] as @e[tag=teamBaseVillager,team=blue] run function clean_kill

execute unless entity @a[team=green] run kill @e[type=minecraft:armor_stand,name="Green",tag=baseTeam]
execute unless entity @a[team=green] as @e[tag=teamBaseVillager,team=green] run function clean_kill

execute unless entity @a[team=red] run kill @e[type=minecraft:armor_stand,name="Red",tag=baseTeam]
execute unless entity @a[team=red] as @e[tag=teamBaseVillager,team=red] run function clean_kill

execute unless entity @a[team=yellow] run kill @e[type=minecraft:armor_stand,name="Yellow",tag=baseTeam]
execute unless entity @a[team=yellow] as @e[tag=teamBaseVillager,team=yellow] run function clean_kill

