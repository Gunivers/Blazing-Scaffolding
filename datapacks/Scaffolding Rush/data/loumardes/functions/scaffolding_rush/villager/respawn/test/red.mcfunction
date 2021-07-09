execute if entity @a[team=blue,gamemode=!spectator] unless score RedVillagerRespawn global matches 0.. run function loumardes:scaffolding_rush/villager/respawn/red
title @a[team=red] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
