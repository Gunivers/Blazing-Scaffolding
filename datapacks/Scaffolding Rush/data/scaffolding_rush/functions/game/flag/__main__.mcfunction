
# animation loop
function scaffolding_rush:game/flag/animation/__main__

# Test flag in inventory
execute as @a[tag=flag_carry] at @s run function scaffolding_rush:game/flag/banner/banner_inventory

# Test flag in game
execute as @a[gamemode=!spectator] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #scaffolding_rush:flag
