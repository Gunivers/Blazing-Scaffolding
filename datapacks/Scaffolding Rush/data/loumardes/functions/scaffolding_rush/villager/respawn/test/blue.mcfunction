execute if entity @a[team=blue,gamemode=!spectator] unless score BlueVillagerRespawn global matches 0.. run function loumardes:scaffolding_rush/villager/respawn/blue
title @a[team=blue] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
