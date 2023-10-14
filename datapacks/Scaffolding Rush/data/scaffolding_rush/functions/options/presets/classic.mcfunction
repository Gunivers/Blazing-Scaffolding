# Classic Preset

scoreboard players set Preset options 1

# Map
scoreboard players set #lava.period.second options 7
scoreboard players set WBSize options 95
scoreboard players set WBSize2 options 60
scoreboard players set WBSize3 options 95
scoreboard players set WBSize4 options 130
scoreboard players set WorldborderShrink options 0


scoreboard players set #map.build_height options 20
scoreboard players set UseTimeLimit options 0

scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 0
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 0
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 0
scoreboard players set #gameplay.instant_pillar.enabled options 0
scoreboard players set #gameplay.fast_climb.enabled options 0
scoreboard players set #gameplay.respawn.delay.second options 3
scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 0

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set #villager.respawn.seconds options 30
scoreboard players set #villager.invulnerable options 0
scoreboard players set #villager.movable options 1

# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 600
scoreboard players set VolcanoTargetRate options 0

function scaffolding_rush:options/refresh

# EN
tellraw @a[scores={option_language=0}] [{"text":"Classic\n\n","color":"gold","bold":true},{"text":"The original concept! Eliminate enemy teams by killing their villager and pushing them into the lava!\n\nYou will only have access to scaffoldings (with their natural behavior) and concrete powder that cannot be stacked. The lava rise slowly and you can move your villager at any time, so the main threat is your enemies!","color":"gray","bold":false},{"text":"\n---","color":"gold","bold":true}]

# FR
tellraw @a[scores={option_language=1}] [{"text":"Classique\n\n","color":"gold","bold":true},{"text":"Le concept originel ! Éliminez les équipes adverses en tuant leur villageois et en les poussant dans la lave !\nVous n'aurez accès qu'aux échafaudages (avec leur comportement naturel) et au béton en poudre qui ne peut pas être empilé. La lave monte lentement et vous pouvez déplacer votre villageois à tout moment, donc la principale menace est vos ennemis !","color":"gray","bold":false},{"text":"\n---","color":"gold","bold":true}]