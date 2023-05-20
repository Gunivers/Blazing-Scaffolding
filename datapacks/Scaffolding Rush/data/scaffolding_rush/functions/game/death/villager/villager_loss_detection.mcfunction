#trigger respawn
execute if score Villager options matches 1 unless entity @a[team=blue,tag=TeamEliminated,limit=1] unless entity @e[type=villager,tag=game_villager,tag=blue_villager,limit=1] unless entity @a[tag=has_egg,team=blue] run function scaffolding_rush:villager/respawn/test/blue
execute if score Villager options matches 1 unless entity @a[team=green,tag=TeamEliminated,limit=1] unless entity @e[type=villager,tag=game_villager,tag=green_villager,limit=1] unless entity @a[tag=has_egg,team=green] run function scaffolding_rush:villager/respawn/test/green
execute if score Villager options matches 1 unless entity @a[team=red,tag=TeamEliminated,limit=1] unless entity @e[type=villager,tag=game_villager,tag=red_villager,limit=1] unless entity @a[tag=has_egg,team=red] run function scaffolding_rush:villager/respawn/test/red
execute if score Villager options matches 1 unless entity @a[team=yellow,tag=TeamEliminated,limit=1] unless entity @e[type=villager,tag=game_villager,tag=yellow_villager,limit=1] unless entity @a[tag=has_egg,team=yellow] run function scaffolding_rush:villager/respawn/test/yellow

#respawn countdown
execute if score VillagerForgiveness options matches 1 if score RedVillagerRespawn global matches 0.. run scoreboard players remove RedVillagerRespawn global 1
execute if score VillagerForgiveness options matches 1 if score BlueVillagerRespawn global matches 0.. run scoreboard players remove BlueVillagerRespawn global 1
execute if score VillagerForgiveness options matches 1 if score YellowVillagerRespawn global matches 0.. run scoreboard players remove YellowVillagerRespawn global 1
execute if score VillagerForgiveness options matches 1 if score GreenVillagerRespawn global matches 0.. run scoreboard players remove GreenVillagerRespawn global 1

execute if score VillagerForgiveness options matches 1 if score RedVillagerRespawn global matches 0 as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/egg/give/red
execute if score VillagerForgiveness options matches 1 if score BlueVillagerRespawn global matches 0 as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/egg/give/blue
execute if score VillagerForgiveness options matches 1 if score YellowVillagerRespawn global matches 0 as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/egg/give/yellow
execute if score VillagerForgiveness options matches 1 if score GreenVillagerRespawn global matches 0 as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/egg/give/green

