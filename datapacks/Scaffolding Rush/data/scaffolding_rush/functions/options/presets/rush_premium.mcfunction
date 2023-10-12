# Rush Premium Preset

scoreboard players set Preset options 2

# Map
scoreboard players set #lava.period.second options 3
scoreboard players set WBSize options 145
scoreboard players set WBSize2 options 100
scoreboard players set WBSize3 options 145
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 1
scoreboard players set #worldborder.start_time.second options 2
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 0

scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 0
scoreboard players set #gameplay.fall_damage.enabled options 0
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 1
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 0
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 1
scoreboard players set #gameplay.respawn.delay.second options 1
scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 0
scoreboard players set #villager.respawn.seconds options 30
scoreboard players set #villager.cannot_fall_in_lava options 0
scoreboard players set #villager.movable options 1

# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 300
scoreboard players set VolcanoTargetRate options 25

function scaffolding_rush:options/refresh

# EN
tellraw @a[scores={option_language=0}] [{"text":"Rush Premium\n\n","color":"#7027FF","bold":true},{"text":"Same as the classic preset, but faster and with spectial items!\n\nScaffoldings will now create instant pillars and you climb faster inside them, you will recieve some bumping arrows and fireballs that break scaffoldings to kill you enemies at distance, the lava raise faster, the worldborder is shrinking and your villager can't respawn!","color":"gray","bold":false},{"text":"\n---","color":"#7027FF","bold":true}]

# FR
tellraw @s[scores={option_language=1}] [{"text":"Rush Premium\n\n","color":"#7027FF","bold":true},{"text":"Idem que le preset classique, mais en plus rapide avec des items spéciaux! Les échaffaudages créent désormais des pilliers instantanément et vous grimpez plus vite dans ces derniers. Vous aurez accès a des flèches cinétiques et des boules de feu pour tuer vos anemis à distance, la lave monte plus vite, la bordure de monde rétrécit et la mort de votre villageois est définitive!","color":"gray","bold":false},{"text":"\n---","color":"#7027FF","bold":true}]