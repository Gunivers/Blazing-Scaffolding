
scoreboard players operation VillagerRespawn options = @s opt_vil_resp_cd

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The time to get your villager back has been set to ","color":"gray"},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le temps de recevoir un nouveau villageois a été sur ","color":"gray"},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @a opt_vil_resp_cd 0
scoreboard players enable @a opt_vil_resp_cd

function scaffolding_rush:options/refresh
