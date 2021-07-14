
execute if score @s opt_preset matches 1 run function scaffolding_rush:scaffolding_rush/options/presets/classic
execute if score @s opt_preset matches 2 run function scaffolding_rush:scaffolding_rush/options/presets/rush_premium

scoreboard players set @a opt_preset 0
scoreboard players enable @a opt_preset

function scaffolding_rush:scaffolding_rush/options/refresh
