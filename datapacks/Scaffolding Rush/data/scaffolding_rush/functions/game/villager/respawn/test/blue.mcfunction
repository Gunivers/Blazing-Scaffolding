execute unless score #villager.blue respawn.timer matches 0.. run function scaffolding_rush:game/villager/respawn/blue
title @a[scores={option.language=0},team=blue] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @a[scores={option.language=1},team=blue] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
