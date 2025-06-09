
# fall distance
scoreboard players reset @a[nbt={OnGround:1b}] fallDistance

# animation loop
function scaffolding_rush:game/flag/animation/__main__

# Test flag in inventory
execute as @a[tag=flag_carry] at @s run function scaffolding_rush:game/flag/give/main

# Test flag in game
execute as @a[gamemode=!spectator] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #scaffolding_rush:flag

execute as @e[tag=Flag,tag=flagOne] at @s run tp @s ~ ~ ~ ~2.5 ~
execute as @e[tag=Flag,tag=flagTwo] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=Flag,tag=flagFive] at @s run tp @s ~ ~ ~ ~10 ~

# flag takeover gamemode
execute if score #flag.take_overCountdown data >= #flag.take_over.spawn_interval options run function scaffolding_rush:game/flag/new_spreaded
execute run scoreboard players add #flag.take_overCountdown data 1

# remove flags in lava
execute as @e[type=armor_stand,tag=Flag] at @s unless block ~ ~2 ~ air unless block ~ ~2 ~ scaffolding run function scaffolding_rush:game/flag/stack_kill

# grabbing flag
execute as @a[gamemode=adventure,tag=!flag_carry] at @s positioned ~ ~-2 ~ if entity @e[type=armor_stand,tag=Flag,distance=..3] run function scaffolding_rush:game/flag/grab/any
execute as @a[gamemode=survival,tag=!flag_carry] at @s positioned ~ ~-2 ~ if entity @e[type=armor_stand,tag=Flag,distance=..3] run function scaffolding_rush:game/flag/grab/any

# depositing flag
execute as @a[tag=flag_carry,team=blue] at @s if entity @e[type=villager,tag=respawn_villager,distance=..1, team=blue] run function scaffolding_rush:game/flag/claim/team/blue
execute as @a[tag=flag_carry,team=red] at @s if entity @e[type=villager,tag=respawn_villager,distance=..1,team=red] run function scaffolding_rush:game/flag/claim/team/red
execute as @a[tag=flag_carry,team=green] at @s if entity @e[type=villager,tag=respawn_villager,distance=..1,team=green] run function scaffolding_rush:game/flag/claim/team/green
execute as @a[tag=flag_carry,team=yellow] at @s if entity @e[type=villager,tag=respawn_villager,distance=..1,team=yellow] run function scaffolding_rush:game/flag/claim/team/yellow
