execute unless score GreenVillagerRespawn global matches 0.. run function scaffolding_rush:villager/respawn/green
title @a[scores={language=0},team=green] actionbar ["",{"text":"You can't respawn","color":"dark_green"}]
title @a[scores={language=1},team=green] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
