execute unless score #villager.yellow respawn.timer matches 0.. run function scaffolding_rush:game/villager/respawn/yellow
title @a[scores={option.language=0},team=yellow] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @a[scores={option.language=1},team=yellow] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
