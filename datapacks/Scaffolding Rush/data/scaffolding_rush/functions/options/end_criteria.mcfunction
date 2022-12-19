
#generated option function

scoreboard players operation EndCriteria options = @s opt_end_criteria

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The end_criteria option has been set to ","color":"gray"},{"score":{"name":"EndCriteria","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option end_criteria a été mise à ","color":"gray"},{"score":{"name":"EndCriteria","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_end_criteria 0
scoreboard players enable @s opt_end_criteria

function scaffolding_rush:options/refresh
