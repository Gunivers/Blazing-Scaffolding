execute if entity @a[team=blue,gamemode=!spectator] unless score GreenVillagerRespawn global matches 0.. run function loumardes:scaffolding_rush/villager/respawn/green
title @a[team=green] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
