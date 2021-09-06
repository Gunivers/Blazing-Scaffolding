execute if score VillagerForgiveness options matches 1 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you will get a new one in ","color":"red"},{"score":{"name":"VillagerRespawn","objective":"options","color":"gray"}},{"text":" seconds","color":"red"}]

execute if score VillagerForgiveness options matches 0 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you can't respawn","color":"red"}]

title @s title {"text":""}
title @s subtitle [{"text":"Villager lost :/","color":"red"}]

playsound minecraft:entity.parrot.imitate.zombie_villager master @s ~ ~ ~ 2 1 1