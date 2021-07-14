
scoreboard players operation VillagerRespawn options = @s opt_vil_resp_cd

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The time to get your villager back has been set to ","color":"gray"},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]

scoreboard players set @a opt_vil_resp_cd 0
scoreboard players enable @a opt_vil_resp_cd

function scaffolding_rush:scaffolding_rush/options/refresh
