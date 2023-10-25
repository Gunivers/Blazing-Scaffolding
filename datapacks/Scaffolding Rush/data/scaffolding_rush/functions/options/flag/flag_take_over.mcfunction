
execute store success score #flag.take_over options if score #flag.take_over options matches 0

execute if score #flag.take_over options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.flag_hunt_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #flag.take_over options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.flag_hunt_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

#Hide the scores if disabled
execute unless score #flag.take_over options matches 0 run scoreboard objectives setdisplay sidebar

scoreboard players set @s option_flag_take_over 0
scoreboard players enable @s option_flag_take_over

function scaffolding_rush:options/refresh
