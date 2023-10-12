# Volcano Preset

scoreboard players set Preset options 4

# Map
scoreboard players set #lava.period.second options 10
scoreboard players set WBSize options 140
scoreboard players set WBSize2 options 115
scoreboard players set WBSize3 options 140
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 0


scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 0

scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 1
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 0
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 1
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 0

scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 0

# Villager
scoreboard players set #villager.enabled options 0





# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 140
scoreboard players set VolcanoTargetRate options 5

function scaffolding_rush:options/refresh

# EN
tellraw @a[scores={option_language=0}] [{"text":"Volcanos","color":"dark_red","bold":true},{"text":"\n\nOh sh*t! The volcanos are waking up! There is a high probability of lava projectiles touching your scaffolding bridges! Be carefull to the near scaffoldings, you can see them heating 2-3 seconds before the projectile reach them... unless it is actually a fireball launched by another player! Oh and, there is no villager, at all. Good luck & run fast!","color":"gray","bold":false},{"text":"\n---","color":"dark_red","bold":true}]

# FR
tellraw @a[scores={option_language=1}] [{"text":"Volcans","color":"dark_red","bold":true},{"text":"\n\nOh mer** ! les volcans se réveillent! Il y a une forte probabilité que des projectiles de lave touchent vos échafaudages ! Faites attention aux échafaudages proches, vous pouvez les voir chauffer 2-3 secondes avant que le projectile ne les atteigne... à moins que ce ne soit une boule de feu lancée par un autre joueur ! Oh et, il n'y a pas de villageois, du tout. Bonne chance et courez vite !","color":"gray","bold":false},{"text":"\n---","color":"dark_red","bold":true}]