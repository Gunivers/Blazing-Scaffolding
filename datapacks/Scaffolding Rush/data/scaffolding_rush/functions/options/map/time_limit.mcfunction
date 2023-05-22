
#generated option function

scoreboard players operation TimeLimit options = @s opt_time_limit

tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The time_limit option has been set to ","color":"gray"},{"score":{"name":"TimeLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option time_limit a été mise à ","color":"gray"},{"score":{"name":"TimeLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_time_limit 0
scoreboard players enable @s opt_time_limit

function scaffolding_rush:options/refresh
