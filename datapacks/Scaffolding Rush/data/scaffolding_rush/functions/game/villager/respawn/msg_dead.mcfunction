execute if score #villager.can_respawn options matches 1 run tellraw @s[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Your Villager has died, you will get a new one in ","color":"red"},{"score":{"name":"#villager.respawn.seconds","objective":"options","color":"gray"}},{"text":" seconds","color":"red"}]
execute if score #villager.can_respawn options matches 0 run tellraw @s[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Your Villager has died, you can't respawn","color":"red"}]

execute if score #villager.can_respawn options matches 1 run tellraw @s[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Votre Villageois est mort, vous en aurez un nouveau dans ","color":"red"},{"score":{"name":"#villager.respawn.seconds","objective":"options","color":"gray"}},{"text":" secondes","color":"red"}]
execute if score #villager.can_respawn options matches 0 run tellraw @s[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Votre Villageois est mort, vous ne pouvez plus réapparaître","color":"red"}]

title @s times 0 30 20
title @s title {"text":""}
title @s[scores={option.language=0}] subtitle [{"text":"Villager lost","color":"red","bold":true}]
title @s[scores={option.language=1}] subtitle [{"text":"Villageois mort","color":"red","bold":true}]

playsound minecraft:entity.illusioner.death master @s ~ ~ ~ 10000 1