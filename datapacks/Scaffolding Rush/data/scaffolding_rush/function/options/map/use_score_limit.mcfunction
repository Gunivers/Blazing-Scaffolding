
#generated option function

execute store success score UseScoreLimit options if score UseScoreLimit options matches 0

execute if score UseScoreLimit options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.use_score_limit","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score UseScoreLimit options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.use_score_limit","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_use_score_limit 0
scoreboard players enable @s option_use_score_limit

function scaffolding_rush:options/refresh
