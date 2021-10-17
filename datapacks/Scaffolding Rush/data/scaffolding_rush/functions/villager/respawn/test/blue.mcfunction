execute unless score BlueVillagerRespawn global matches 0.. run function scaffolding_rush:villager/respawn/blue
title @a[scores={language=0},team=blue] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @a[scores={language=1},team=blue] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
