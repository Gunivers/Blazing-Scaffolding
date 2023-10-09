# Execute globally
# Called by function scaffolding_rush:game/__main__

#Rise Lava
scoreboard players add #lava timer 1

execute if score #lava timer >= #lava.period.tick options run scoreboard players add #lava.level data 1

execute if score #performance_mode options matches 0 if score #lava timer >= #lava.period.tick options as @e[type=marker,name="lava.level"] at @s run function scaffolding_rush:game/lava/rise_globally
execute if score #performance_mode options matches 1 as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/lava/rise_locally
execute if score #performance_mode options matches 1 as @e[type=villager,tag=respawn_villager] at @s run function scaffolding_rush:game/lava/rise_locally

#rise lasting bases
execute unless score #lasting_base options matches 0 if score #lava timer >= #lava.period.tick options run function scaffolding_rush:team/create_base/rise

execute if score #lava timer >= #lava.period.tick options as @e[type=marker,name="build"] at @s run function scaffolding_rush:game/air_replace
execute if score #lava timer >= #lava.period.tick options run scoreboard players set #lava timer 0


#bossbar
execute store result bossbar filling_lava value run scoreboard players get #lava timer

execute as @e[type=marker,name="lava.level",limit=1] at @s run particle lava ~ ~ ~ 160 0 160 1 20 normal
