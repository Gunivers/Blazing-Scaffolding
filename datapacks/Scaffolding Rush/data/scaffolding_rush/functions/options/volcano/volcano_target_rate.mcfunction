
scoreboard players operation VolcanoTargetRate options = @s opt_volcano_target_rate

tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The lava pop target rate has been set to once every ","color":"gray"},{"score":{"name":"VolcanoTargetRate","objective":"options"},"color":"gold"},{"text":" pops","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le taux de ciblage des gerbes de lave a été défini à une toutes les ","color":"gray"},{"score":{"name":"VolcanoTargetRate","objective":"options"},"color":"gold"},{"text":" gerbes","color":"gray"}]

scoreboard players set @s opt_volcano_target_rate 0
scoreboard players enable @s opt_volcano_target_rate

function scaffolding_rush:options/refresh
