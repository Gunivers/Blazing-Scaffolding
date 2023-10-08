# Executed globally
# Called by #minecraft:load

#==============================================================================
# OBJECTIVES DECLARATIONS
#==============================================================================

# Global data -----------------------------------------------------------------

scoreboard objectives add timer dummy {"text":"Timer","color": "gold"}
scoreboard objectives add data dummy {"text":"Global Data","color": "gold"}
scoreboard objectives add tmp dummy {"text":"Temporary Data","color": "gold"}
scoreboard objectives add options dummy {"text":"Options","color": "gold"}
scoreboard objectives add const dummy {"text":"Constants","color": "gold"}

# Player data -----------------------------------------------------------------

scoreboard objectives add game.id dummy {"text":"Game ID","color": "aqua"}
scoreboard objectives add option.language dummy
scoreboard objectives add tutorial.cell.z dummy {"text":"Tutorial Cell Z","color": "aqua"}
scoreboard objectives add UUID dummy {"text":"UUID","color": "aqua"}
scoreboard objectives add respawn.timer dummy {"text":"Respawn Timer","color": "aqua"}

# Entities data ---------------------------------------------------------------

scoreboard objectives add respawn.timer dummy {"text":"Respawn Timer","color": "blue"}
scoreboard objectives add pos.x dummy {"text":"Pos X","color": "blue"}
scoreboard objectives add pos.y dummy {"text":"Pos Y","color": "blue"}
scoreboard objectives add pos.z dummy {"text":"Pos Z","color": "blue"}
scoreboard objectives add interaction.UUID dummy {"text":"Interaction UUID","color": "blue"}

# Triggers --------------------------------------------------------------------

scoreboard objectives add trigger.death deathCount {"text":"Trigger Death","color": "gray"}
scoreboard objectives add trigger.leave minecraft.custom:minecraft.leave_game {"text":"Trigger Leave","color": "gray"}
scoreboard objectives add trigger.use.snowball minecraft.used:minecraft.snowball {"text":"Trigger Use Snowball","color": "gray"}
scoreboard objectives add trigger.use.ender_pearl minecraft.used:minecraft.ender_pearl {"text":"Trigger Use Ender Pearl","color": "gray"}
scoreboard objectives add trigger.use.blue_spawn_egg minecraft.used:squid_spawn_egg {"text":"Trigger Use Blue Spawn Egg","color": "gray"}
scoreboard objectives add trigger.use.green_spawn_egg minecraft.used:slime_spawn_egg {"text":"Trigger Use Green Spawn Egg","color": "gray"}
scoreboard objectives add trigger.use.red_spawn_egg minecraft.used:mooshroom_spawn_egg {"text":"Trigger Use Red Spawn Egg","color": "gray"}
scoreboard objectives add trigger.use.yellow_spawn_egg minecraft.used:blaze_spawn_egg {"text":"Trigger Use Yellow Spawn Egg","color": "gray"}


### TO SORT
scoreboard objectives add fallDistance minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add climbing minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouching minecraft.custom:minecraft.sneak_time
scoreboard objectives add bellring minecraft.custom:minecraft.bell_ring
scoreboard objectives add lightLevel dummy
scoreboard objectives add health dummy
scoreboard objectives add sc.timer.tutorial dummy


scoreboard objectives add fireball_timer dummy
scoreboard objectives add fireball_count dummy
scoreboard objectives add enderpearl_timer dummy
scoreboard objectives add enderpearl_count dummy
scoreboard objectives add snowballs dummy
scoreboard objectives add glib.parentId dummy

#==============================================================================
# SCORES INITIALIZATION
#==============================================================================

# Constants -------------------------------------------------------------------

scoreboard players set -1 const -1
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 5 const 5
scoreboard players set 10 const 10
scoreboard players set 20 const 20
scoreboard players set 60 const 60
scoreboard players set 100 const 100
scoreboard players set 256 const 256
scoreboard players set 1000 const 1000
scoreboard players set 1200 const 1200
scoreboard players set 3000 const 3000

# Game state -----------------------------------------------------------------

execute unless score #game.id data matches 0.. run scoreboard players set #game.id data 0
execute unless score #lobby.active data matches 0.. run scoreboard players set #lobby.active data 1
execute unless score #game.end data matches 0.. run scoreboard players set #game.end data 0
execute unless score #game.running data matches 0.. run scoreboard players set #game.running data 0
execute unless score #game.loading data matches 0.. run scoreboard players set #game.loading data 0
execute unless score #game.clear data matches 0.. run scoreboard players set #game.clear data 0
execute unless score #lobby.clear data matches 0.. run scoreboard players set #lobby.clear data 0

#==============================================================================
# TEAMS INITIALIZATION
#==============================================================================

#teams
team add red
team add blue
team add yellow
team add green
team add random

team add purple_glow
team add yellow_glow
team add cyan_glow

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify random color dark_purple
team modify purple_glow color dark_purple
team modify yellow_glow color yellow
team modify cyan_glow color aqua

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

# Score display
team join blue Blue
team join green Green
team join red Red
team join yellow Yellow

#==============================================================================
# GAMERULES
#==============================================================================

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
gamerule doMobLoot false
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
gamerule sendCommandFeedback true
execute if score DevelopementMode data matches 1 run gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

#==============================================================================
# CLEAR MAP
#==============================================================================

# Kill all entities
execute as @e[type=villager] run function scaffolding_rush:clean_kill
kill @e[type=!player]





### TO SORT -------------------------------------------------------------------

# Game
forceload add 1100 1100 900 900
# Lobby
forceload add 100 100 -100 -100
# tutorial
function scaffolding_rush:tutorial/forceload

#trigger controls
# use "/scoreboard players set DevelopementMode data 1" in order to start the map solo
scoreboard objectives add StartGame trigger
scoreboard objectives add Reset trigger

scoreboard objectives add tuto trigger
scoreboard objectives add lobby trigger

scoreboard objectives add glib.res0 dummy


# Remove Sidebar
scoreboard objectives setdisplay sidebar

# Init global


#initialize options scores
function scaffolding_rush:options/__init__

function scaffolding_rush:item/__init__

#advancement use_item
advancement revoke @a from scaffolding_rush:use_item

#worldborder
worldborder warning distance 1
worldborder damage amount 0

#time
time set noon

setworldspawn -500 1 0

#Bossbar
bossbar add filling_lava ""
bossbar set minecraft:filling_lava color red

bossbar add time_limit ""
bossbar set minecraft:time_limit color white

# Reset
execute unless score #game.id data matches 0 run schedule function scaffolding_rush:reset 5t
execute unless score #game.id data matches 0 run function scaffolding_rush:clear/lobby/launch

execute unless score game.id data matches 0 run function scaffolding_rush:first_launch
