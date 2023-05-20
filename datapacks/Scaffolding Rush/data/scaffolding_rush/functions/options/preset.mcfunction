
execute if score @s opt_preset matches 1 run function scaffolding_rush:options/presets/classic
execute if score @s opt_preset matches 2 run function scaffolding_rush:options/presets/rush_premium
execute if score @s opt_preset matches 3 run function scaffolding_rush:options/presets/ctf

execute if score @s opt_preset matches 4.. run function scaffolding_rush:options/presets/classic
execute if score @s opt_preset matches ..-1 run function scaffolding_rush:options/presets/ctf

scoreboard players set @s opt_preset 0
scoreboard players enable @s opt_preset

function scaffolding_rush:options/refresh
