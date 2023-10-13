# Flag Mayhem Preset

scoreboard players set Preset options 7

# Map
scoreboard players set #lava.period.second options 3
scoreboard players set WBSize options 40
scoreboard players set WBSize2 options 30
scoreboard players set WBSize3 options 40
scoreboard players set WBSize4 options 95
scoreboard players set WorldborderShrink options 0
scoreboard players set #worldborder.start_time.second options 2
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 1
scoreboard players set #game.time.limit options 5
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 1
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 1
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 1
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 1
scoreboard players set #gameplay.respawn.delay.second options 5
scoreboard players set #gameplay.lasting_base.enabled options 1
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set #villager.respawn.seconds options 10
scoreboard players set #villager.invulnerable options 1
scoreboard players set #villager.movable options 1

# Flags
scoreboard players set #flag.take_over options 1

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 200
scoreboard players set VolcanoTargetRate options 10

function scaffolding_rush:options/refresh

# EN
tellraw @a[scores={option_language=0}] [{"text":"Flag Mayhem\n\n","color":"light_purple","bold":true},{"text":"Another variant of GTF. Accumulate point by capturing flags and bringing them back to your villager. But here, lava raise fast and the worldborder shrink! In counterpart, scaffoldings create instant pillars and you climb faster inside them. Also, you have bumping arrow and fireball, and the last but not least: you can move your villager!","color":"gray","bold":false},{"text":"\n---","color":"light_purple","bold":true}]

# FR
tellraw @a[scores={option_language=1}] [{"text":"Flag Mayhem\n\n","color":"light_purple","bold":true},{"text":"Une autre variante de GTF. Accumulez des points en capturant des drapeaux et en les ramenant à votre villageois. Mais ici, la lave monte vite et la bordure du monde rétrécit ! En contrepartie, les échafaudages créent des piliers instantanés et vous grimpez plus vite à l'intérieur. De plus, vous avez des flèches cinétique et des boules de feu. Et le meilleur pour la fin: vous pouvez déplacer votre villageois !","color":"gray","bold":false},{"text":"\n---","color":"light_purple","bold":true}]