execute as @e[type=villager] run function scaffolding_rush:clean_kill
kill @e[type=!player]

forceload add 1100 1100 900 900
forceload add 100 100 -100 -100

#trigger controls
# use "/scoreboard players set DevelopementMode global 1" in order to start the map solo
scoreboard objectives add StartGame trigger
scoreboard objectives add Reset trigger

scoreboard objectives add glib.res0 dummy

scoreboard objectives add opt_preset trigger
scoreboard objectives add opt_build_height trigger
scoreboard objectives add opt_vil_resp_cd trigger
scoreboard objectives add opt_sand trigger
scoreboard objectives add opt_snowball trigger
scoreboard objectives add opt_fireball trigger
scoreboard objectives add opt_ender_pearl trigger
scoreboard objectives add opt_vil_respawn trigger
scoreboard objectives add opt_instant_pil trigger
scoreboard objectives add opt_perf_mode trigger
scoreboard objectives add opt_team_egg trigger
scoreboard objectives add opt_wb_size_add trigger
scoreboard objectives add opt_regen trigger
scoreboard objectives add opt_fall_damage trigger
scoreboard objectives add opt_villager trigger
scoreboard objectives add opt_language trigger
scoreboard objectives add opt_resp_delay trigger
scoreboard objectives add opt_admin trigger
scoreboard objectives add opt_random_team trigger
scoreboard objectives add opt_team_number trigger
scoreboard objectives add opt_lasting_bases trigger
scoreboard objectives add opt_flag_take_over trigger
scoreboard objectives add opt_interactible_lobby trigger
scoreboard objectives add opt_volcano trigger
scoreboard objectives add opt_volcano_summon_period trigger
scoreboard objectives add opt_volcano_pop_period trigger
scoreboard objectives add opt_volcano_target_rate trigger
scoreboard objectives add opt_scaff_stops_arrow trigger

#internal values
scoreboard objectives add timer dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add global dummy
scoreboard objectives add options dummy
scoreboard objectives add XEntity dummy
scoreboard objectives add YEntity dummy
scoreboard objectives add ZEntity dummy
scoreboard objectives add usedSnowball minecraft.used:minecraft.snowball
scoreboard objectives add gameId dummy
scoreboard objectives add language dummy
scoreboard objectives add respawnTime dummy
scoreboard objectives add respawnTimeTics dummy
scoreboard objectives add Score dummy
scoreboard objectives add fallDistance minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add climbing minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouching minecraft.custom:minecraft.sneak_time
scoreboard objectives add lightLevel dummy
scoreboard objectives add health dummy

scoreboard objectives add killed deathCount
scoreboard objectives add bluePlaced minecraft.used:squid_spawn_egg
scoreboard objectives add greenPlaced minecraft.used:slime_spawn_egg
scoreboard objectives add redPlaced minecraft.used:mooshroom_spawn_egg
scoreboard objectives add yellowPlaced minecraft.used:blaze_spawn_egg

scoreboard objectives add fireball_timer dummy
scoreboard objectives add fireball_count dummy
scoreboard objectives add enderpearl_timer dummy
scoreboard objectives add enderpearl_count dummy
scoreboard objectives add UsedEnderpearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add snowball dummy
scoreboard objectives add glib.parentId dummy

scoreboard objectives add const dummy
scoreboard players set -1 const -1
scoreboard players set #1 const 1
scoreboard players set #20 const 20
scoreboard players set #60 const 60
scoreboard players set 100 const 100
scoreboard players set 256 const 256
scoreboard players set #1200 const 1200
scoreboard players set 3000 const 3000

scoreboard players set #100 global 100
scoreboard players set #60 global 60
scoreboard players set #20 global 20
scoreboard players set #10 global 10
scoreboard players set #2 global 2
scoreboard players set #0 global 0
scoreboard players set #-1 global -1

# Remove Sidebar
scoreboard objectives setdisplay sidebar

# Init global

execute unless score GameId global matches 0.. run scoreboard players set GameId global 0
execute unless score GameLobby global matches 0.. run scoreboard players set GameLobby global 1
execute unless score GameEnd global matches 0.. run scoreboard players set GameEnd global 0
execute unless score GameRunning global matches 0.. run scoreboard players set GameRunning global 0
execute unless score GameLoading global matches 0.. run scoreboard players set GameLoading global 0
execute unless score ClearGame global matches 0.. run scoreboard players set ClearGame global 0
execute unless score ClearLobby global matches 0.. run scoreboard players set ClearLobby global 0

#Configuration scores
execute unless score BuildHeight options matches 5.. run scoreboard players set BuildHeight options 20
execute unless score VillagerForgiveness options matches 0.. run scoreboard players set VillagerForgiveness options 1
execute unless score VillagerRespawn options matches 0.. run scoreboard players set VillagerRespawn options 30
execute unless score UseSand options matches 0.. run scoreboard players set UseSand options 1
execute unless score UseSnowball options matches 0.. run scoreboard players set UseSnowball options 0
execute unless score UseFireball options matches 0.. run scoreboard players set UseFireball options 0
execute unless score UseEnderPearl options matches 0.. run scoreboard players set UseEnderPearl options 0
execute unless score InstantPillar options matches 0.. run scoreboard players set InstantPillar options 0
execute unless score TeamEgg options matches 0.. run scoreboard players set TeamEgg options 0
execute unless score PerformanceMode options matches 0.. run scoreboard players set PerformanceMode options 0
execute unless score RandomTeam options matches 0..1 run scoreboard players set RandomTeam options 0
execute unless score Regen options matches 0.. run scoreboard players set Regen options 1
execute unless score FallDamage options matches 0.. run scoreboard players set FallDamage options 0
execute unless score Admin options matches 0.. run scoreboard players set Admin options 0
execute unless score TeamNumber options matches 0.. run scoreboard players set TeamNumber options 2
execute unless score Villager options matches 0.. run scoreboard players set Villager options 1
execute unless score RespawnDelay options matches 1.. run scoreboard players set RespawnDelay options 3
execute unless score WBSize options matches 25..165 run scoreboard players set WBSize options 95
execute unless score Volcano options matches 0.. run scoreboard players set Volcano options 0
execute unless score VolcanoSummonPeriod options matches 0.. run scoreboard players set VolcanoSummonPeriod options 1200
execute unless score VolcanoPopPeriod options matches 0.. run scoreboard players set VolcanoPopPeriod options 10
execute unless score VolcanoTargetRate options matches 0.. run scoreboard players set VolcanoTargetRate options 25
execute unless score ScaffoldingStopsArrow options matches 0.. run scoreboard players set ScaffoldingStopsArrow options 0
execute unless score FlagTakeOverSpawnInterval options matches 0.. run scoreboard players set FlagTakeOverSpawnInterval options 600
#initialize options scores
function scaffolding_rush:options/__init__

#advancement replenish
advancement revoke @a from scaffolding_rush:replenish

#teams
team add red
team add blue
team add yellow
team add green
team add random

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify random color dark_purple

team modify red collisionRule never
team modify blue collisionRule never
team modify yellow collisionRule never
team modify green collisionRule never
team modify random collisionRule never
team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify random friendlyFire true

#Score
team join blue Blue
team join green Green
team join red Red
team join yellow Yellow

#worldborder
worldborder warning distance 1
worldborder damage amount 0

#time
time set noon

#gamerule
gamerule announceAdvancements false
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
execute if score FallDamage options matches 0 run gamerule fallDamage false
execute unless score FallDamage options matches 0 run gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing true
gamerule naturalRegeneration false
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
execute if score DevelopementMode global matches 1 run gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false


setworldspawn 0 24 0

#Bossbar
bossbar add filling_lava ""
bossbar set minecraft:filling_lava color red

bossbar add time_limit ""
bossbar set minecraft:time_limit color white

# Reset
execute unless score GameId global matches 0 run function scaffolding_rush:reset
execute unless score GameId global matches 0 run function scaffolding_rush:clear/lobby/launch

execute unless score gameId global matches 0 run function scaffolding_rush:first_launch
