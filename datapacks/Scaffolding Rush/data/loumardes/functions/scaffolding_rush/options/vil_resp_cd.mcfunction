

execute as @a[scores={opt_vil_resp_cd=1..}] run scoreboard players operation VillagerRespawn options = @s opt_vil_resp_cd

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The time to give back your villager has been set to "},{"score":{"name":"VillagerRespawn","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_vil_resp_cd 0
scoreboard players enable @a opt_vil_resp_cd

function loumardes:scaffolding_rush/options/refresh
