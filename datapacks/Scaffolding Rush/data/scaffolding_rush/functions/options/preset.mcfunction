
execute if score @s option_preset matches 1 run function scaffolding_rush:options/presets/classic
execute if score @s option_preset matches 2 run function scaffolding_rush:options/presets/rush_premium
execute if score @s option_preset matches 3 run function scaffolding_rush:options/presets/chaos
execute if score @s option_preset matches 4 run function scaffolding_rush:options/presets/volcano
execute if score @s option_preset matches 5 run function scaffolding_rush:options/presets/gtf
execute if score @s option_preset matches 6 run function scaffolding_rush:options/presets/sky_scrappers
execute if score @s option_preset matches 7 run function scaffolding_rush:options/presets/flag_mayhem

execute unless score @s option_preset matches -1..8 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.invalid_preset_number","color":"red"},{"text":"\n"},{"translate":"blazing_scaffolding.use","color":"gray"},{"translate":"blazing_scaffolding.trigger_option_preset_set","italic":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger option_preset set"},"hoverEvent":{"action":"show_text","value":[{"translate":"blazing_scaffolding.suggest_command"}]}},{"translate":"blazing_scaffolding.to_choose_one","color":"gray"}]

execute if score @s option_preset matches 8.. run function scaffolding_rush:options/presets/classic
execute if score @s option_preset matches ..-1 run function scaffolding_rush:options/presets/flag_mayhem

scoreboard players set @s option_preset 0
scoreboard players enable @s option_preset

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh
function scaffolding_rush:options/refresh
