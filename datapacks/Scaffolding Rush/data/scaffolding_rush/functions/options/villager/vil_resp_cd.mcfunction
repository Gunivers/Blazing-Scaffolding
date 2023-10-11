
scoreboard players operation #villager.respawn.seconds options = @s option_vil_resp_cd

tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The time to get your villager back has been set to ","color":"gray"},{"score":{"name":"#villager.respawn.seconds","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps de recevoir un nouveau villageois a été défini à ","color":"gray"},{"score":{"name":"#villager.respawn.seconds","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s option_vil_resp_cd 0
scoreboard players enable @s option_vil_resp_cd

function scaffolding_rush:options/refresh
