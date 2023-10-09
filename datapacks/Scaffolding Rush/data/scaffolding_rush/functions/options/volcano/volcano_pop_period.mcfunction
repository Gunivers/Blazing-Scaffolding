
scoreboard players operation VolcanoPopPeriod options = @s option.volcano_pop_period

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The interval between volcano projectiles has been set to ","color":"gray"},{"score":{"name":"VolcanoPopPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'intervalle entre chaque projectile de volcan a été défini à ","color":"gray"},{"score":{"name":"VolcanoPopPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]

scoreboard players set @s option.volcano_pop_period 0
scoreboard players enable @s option.volcano_pop_period

function scaffolding_rush:options/refresh
