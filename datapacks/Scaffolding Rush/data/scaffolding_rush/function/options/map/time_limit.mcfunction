
#generated option function

scoreboard players operation #game.time.limit options = @s option_time_limit

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.time_limit","color":"gray"},{"score":{"name":"TimeLimit","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option_time_limit 0
scoreboard players enable @s option_time_limit

function scaffolding_rush:options/refresh
