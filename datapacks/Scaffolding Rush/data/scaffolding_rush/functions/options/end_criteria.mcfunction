
scoreboard players operation EndGameCriteria options = @s opt_end_criteria

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The win criteria has been set to ","color":"gray"},{"score":{"name":"EndGameCriteria","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le critère de victoire a été mise à ","color":"gray"},{"score":{"name":"EndGameCriteria","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s opt_end_criteria 0
scoreboard players enable @s opt_end_criteria

function scaffolding_rush:options/refresh
