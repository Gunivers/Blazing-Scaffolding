execute as @e[type=villager] run function loumardes:scaffolding_rush/clean_kill
kill @e[type=!player]
kill @e[type=!player]

fill -90 0 -90 90 0 90 bedrock

#summons the AEC indiquant la position de la lave
execute unless entity @e[type=area_effect_cloud,name="ScR_LavaLevel"] run summon minecraft:area_effect_cloud 0 1 0 {Duration:2147483647, CustomName:'{"text":"ScR_LavaLevel"}'}
#create a marker entity 
execute unless entity @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] run summon minecraft:area_effect_cloud 0 0 0 {Duration:2147483647, CustomName:'{"text":"ScR_BuildLimit"}'}


#trigger controls
scoreboard objectives add StartGame trigger
scoreboard objectives add Reset trigger

scoreboard objectives add opt_lava_speed trigger
scoreboard objectives add opt_build_height trigger
scoreboard objectives add opt_vil_resp_cd trigger
scoreboard objectives add opt_gravel trigger
scoreboard objectives add opt_snowball trigger
scoreboard objectives add opt_vil_respawn trigger
scoreboard objectives add opt_instant_pil trigger
scoreboard objectives add opt_perf_mode trigger
scoreboard objectives add opt_team_egg trigger
scoreboard objectives add opt_wb_size_add trigger

#internal values
scoreboard objectives add global dummy
scoreboard objectives add options dummy
scoreboard objectives add YEntity dummy
scoreboard objectives add villagerClick minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add usedSnowball minecraft.used:minecraft.snowball
scoreboard objectives add gameId dummy

scoreboard objectives add killed deathCount
scoreboard objectives add bluePlaced minecraft.used:squid_spawn_egg
scoreboard objectives add greenPlaced minecraft.used:slime_spawn_egg
scoreboard objectives add redPlaced minecraft.used:mooshroom_spawn_egg
scoreboard objectives add yellowPlaced minecraft.used:blaze_spawn_egg

scoreboard players set #20 global 20
scoreboard players set #10 global 10

execute unless score GameId options matches 0.. run scoreboard players set GameId options 0


#Configuration scores
execute unless score LavaSpeed options matches 1.. run scoreboard players set LavaSpeed options 10
execute unless score BuildHeight options matches 2.. run scoreboard players set BuildHeight options 10

execute unless score VillagerForgiveness options matches 0.. run scoreboard players set VillagerForgiveness options 1
execute unless score VillagerRespawn options matches 0.. run scoreboard players set VillagerRespawn options 30

execute unless score UseGravel options matches 0.. run scoreboard players set UseGravel options 1
execute unless score UseSnowball options matches 0.. run scoreboard players set UseSnowball options 0

execute unless score InstantPillar options matches 0.. run scoreboard players set InstantPillar options 0
execute unless score TeamEgg options matches 0.. run scoreboard players set score options 0

execute unless score PerformanceMode options matches 0.. run scoreboard players set PerformanceMode options 0
execute unless score WBSize options matches 15..165 run scoreboard players set WBSize options 95

#advancement replenish
advancement revoke @a from loumardes:replenish

#teams
team add red
team add blue
team add yellow
team add green

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green

team modify red collisionRule never
team modify blue collisionRule never
team modify yellow collisionRule never
team modify green collisionRule never
team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false

#worldborder
worldborder warning distance 1
worldborder damage amount 0

function loumardes:scaffolding_rush/options/wb_size_refresh

#time
time set noon

#gamerule
gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing true
gamerule naturalRegeneration true
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

setworldspawn 0 4 0

execute unless entity @e[type=area_effect_cloud,name="✔"] run summon minecraft:area_effect_cloud 0 0 0 {Duration:2147483647, CustomName:'{"text":"✔","color":"green"}'}
execute unless entity @e[type=area_effect_cloud,name="✖"] run summon minecraft:area_effect_cloud 0 0 0 {Duration:2147483647, CustomName:'{"text":"✖","color":"red"}'}

#debug / à changer
#say [SR] init done (reset in progress)
playsound ui.toast.in ambient @a
function loumardes:scaffolding_rush/reset
say [SR] reset done
playsound ui.toast.out ambient @a
#function loumardes:scaffolding_rush/lobby/load_lobby
#teleport @a 0 3 0 0 0
#gamerule sendCommandFeedback true
