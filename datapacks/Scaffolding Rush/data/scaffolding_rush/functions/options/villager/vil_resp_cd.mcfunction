
scoreboard players operation VillagerRespawn options = @s opt_vil_resp_cd

tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The time to get your villager back has been set to ","color":"gray"},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps de recevoir un nouveau villageois a été sur ","color":"gray"},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s opt_vil_resp_cd 0
scoreboard players enable @s opt_vil_resp_cd

function scaffolding_rush:options/refresh
