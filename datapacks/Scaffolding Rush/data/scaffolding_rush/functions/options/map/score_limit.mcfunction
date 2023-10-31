
#generated option function

scoreboard players operation ScoreLimit options = @s option_score_limit

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.score_limit","color":"gray"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option_score_limit 0
scoreboard players enable @s option_score_limit

function scaffolding_rush:options/refresh
