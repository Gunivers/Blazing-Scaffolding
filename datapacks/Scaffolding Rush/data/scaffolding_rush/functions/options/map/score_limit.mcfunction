
#generated option function

scoreboard players operation ScoreLimit options = @s option.score_limit

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The score_limit option has been set to ","color":"gray"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option score_limit a été mise à ","color":"gray"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option.score_limit 0
scoreboard players enable @s option.score_limit

function scaffolding_rush:options/refresh