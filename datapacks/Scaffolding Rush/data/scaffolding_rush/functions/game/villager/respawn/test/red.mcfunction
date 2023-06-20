execute unless score RedVillagerRespawn global matches 0.. run function scaffolding_rush:game/villager/respawn/red
title @a[scores={language=0},team=red] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @a[scores={language=1},team=red] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
