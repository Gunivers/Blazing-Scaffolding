execute if score VillagerForgiveness options matches 1 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you will get a new one in ","color":"red"},{"score":{"name":"VillagerRespawn","objective":"options","color":"gray"}},{"text":" seconds","color":"red"}]

execute if score VillagerForgiveness options matches 0 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you can't respawn","color":"red"}]

title @s times 0 30 20
title @s title {"text":""}
title @s subtitle [{"text":"Villager lost","color":"red","bold":"true"}]

playsound minecraft:entity.illusioner.death master @s ~ ~ ~ 10000 1