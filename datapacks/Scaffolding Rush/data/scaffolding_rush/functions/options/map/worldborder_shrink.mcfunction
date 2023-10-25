
#generated option function

execute store success score WorldborderShrink options if score WorldborderShrink options matches 0

execute if score WorldborderShrink options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_shrink","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score WorldborderShrink options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_shrink","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_worldborder_shrink 0
scoreboard players enable @s option_worldborder_shrink

function scaffolding_rush:options/refresh
