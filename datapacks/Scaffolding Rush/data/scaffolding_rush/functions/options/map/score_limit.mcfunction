
#generated option function

scoreboard players operation ScoreLimit options = @s opt_score_limit

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The score_limit option has been set to ","color":"gray"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option score_limit a été mise à ","color":"gray"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_score_limit 0
scoreboard players enable @s opt_score_limit

function scaffolding_rush:options/refresh
