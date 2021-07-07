#trigger respawn
execute if entity @a[team=blue] unless entity @e[type=villager,team=blue,limit=1] unless entity @a[tag=has_egg,team=blue] run function loumardes:scaffolding_rush/villager/test_respawn/blue
execute if entity @a[team=green] unless entity @e[type=villager,team=green,limit=1] unless entity @a[tag=has_egg,team=green] run function loumardes:scaffolding_rush/villager/test_respawn/green
execute if entity @a[team=red] unless entity @e[type=villager,team=red,limit=1] unless entity @a[tag=has_egg,team=red] run function loumardes:scaffolding_rush/villager/test_respawn/red
execute if entity @a[team=yellow] unless entity @e[type=villager,team=yellow,limit=1] unless entity @a[tag=has_egg,team=yellow] run function loumardes:scaffolding_rush/villager/test_respawn/yellow


#respawn countdown
execute if score RedVillagerRespawn constant matches 0.. run scoreboard players remove RedVillagerRespawn constant 1
execute if score BlueVillagerRespawn constant matches 0.. run scoreboard players remove BlueVillagerRespawn constant 1
execute if score YellowVillagerRespawn constant matches 0.. run scoreboard players remove YellowVillagerRespawn constant 1
execute if score GreenVillagerRespawn constant matches 0.. run scoreboard players remove GreenVillagerRespawn constant 1

execute if score RedVillagerRespawn constant matches 0 as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/red
execute if score BlueVillagerRespawn constant matches 0 as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/blue
execute if score YellowVillagerRespawn constant matches 0 as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/yellow
execute if score GreenVillagerRespawn constant matches 0 as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/green

