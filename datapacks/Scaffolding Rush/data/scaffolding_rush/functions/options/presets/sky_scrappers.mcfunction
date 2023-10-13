# Sky Screppers Preset

scoreboard players set Preset options 6

# Map
scoreboard players set #lava.period.second options 15
scoreboard players set WBSize options 40
scoreboard players set WBSize2 options 30
scoreboard players set WBSize3 options 40
scoreboard players set WBSize4 options 95
scoreboard players set WorldborderShrink options 0


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
scoreboard players set #player.item.ender_pearl.enabled options 1
scoreboard players set #player.item.fireball.enabled options 1
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 1
scoreboard players set #gameplay.respawn.delay.second options 5
scoreboard players set #gameplay.lasting_base.enabled options 1
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set #villager.respawn.seconds options 30
scoreboard players set #villager.invulnerable options 1
scoreboard players set #villager.movable options 0

# Flags
scoreboard players set #flag.take_over options 1

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 300
scoreboard players set VolcanoTargetRate options 25

function scaffolding_rush:options/refresh

# EN
tellraw @a[scores={option_language=0}] [{"text":"Sky Scrappers\n\n","color":"green","bold":true},{"text":"Same as GTF, you have to accumulate point by capturing flags and bringing them back to your villager. The difference is that scaffoldings now create instant pillars and you climb faster inside them. The counterpart? Everyone has now fireballs and ender pearl to destroy or take advantage of enemy bridges!","color":"gray","bold":false},{"text":"\n---","color":"green","bold":true}]

# FR
tellraw @a[scores={option_language=1}] [{"text":"Sky Scrappers\n\n","color":"green","bold":true},{"text":"Comme dans GTF, vous devez accumuler des points en capturant des drapeaux et en les ramenant à votre villageois. La différence est que les échafaudages créent maintenant des piliers instantanés et vous grimpez plus vite à l'intérieur. La contrepartie ? Tout le monde a maintenant des boules de feu et des perles de l'end pour détruire ou profiter des ponts adverse !","color":"gray","bold":false},{"text":"\n---","color":"green","bold":true}]