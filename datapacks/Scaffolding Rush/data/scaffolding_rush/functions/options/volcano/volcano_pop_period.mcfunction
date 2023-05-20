
scoreboard players operation VolcanoPopPeriod options = @s opt_volcano_pop_period

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The interval between volcano projectiles has been set to ","color":"gray"},{"score":{"name":"VolcanoPopPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'intervalle entre chaque projectile de volcan a été défini à ","color":"gray"},{"score":{"name":"VolcanoPopPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]

scoreboard players set @s opt_volcano_pop_period 0
scoreboard players enable @s opt_volcano_pop_period

function scaffolding_rush:options/refresh
