
scoreboard players operation VolcanoSummonPeriod options = @s opt_volcano_summon_period

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The interval between volcano spawns has been set to ","color":"gray"},{"score":{"name":"VolcanoSummonPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'intervalle d'apparition des volcans a été défini à ","color":"gray"},{"score":{"name":"VolcanoSummonPeriod","objective":"options"},"color":"gold"},{"text":" tics","color":"gray"}]

scoreboard players set @s opt_volcano_summon_period 0
scoreboard players enable @s opt_volcano_summon_period

function scaffolding_rush:options/refresh
