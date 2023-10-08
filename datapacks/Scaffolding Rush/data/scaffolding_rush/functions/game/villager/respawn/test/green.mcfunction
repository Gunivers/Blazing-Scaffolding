execute unless score #villager.green respawn.timer matches 0.. run function scaffolding_rush:game/villager/respawn/green
title @a[scores={option.language=0},team=green] actionbar ["",{"text":"You can't respawn","color":"dark_green"}]
title @a[scores={option.language=1},team=green] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
