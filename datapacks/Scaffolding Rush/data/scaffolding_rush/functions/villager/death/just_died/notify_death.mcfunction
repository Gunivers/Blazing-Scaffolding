playsound minecraft:entity.player.hurt_on_fire ambient @a ~ ~ ~
playsound minecraft:entity.illusioner.death master @s ~ ~ ~ 10000 1

title @s times 0 30 20
title @s title {"text":""}
title @s subtitle [{"translate":"blazing_scaffolding.villager_lost","color":"red","bold":true}]

execute if score #villager.can_respawn options matches 1 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.your_villager_has_died","color":"red"},{"score":{"name":"#villager.respawn.seconds","objective":"options","color":"gray"}},{"translate":"blazing_scaffolding.seconds","color":"red"}]
execute if score #villager.can_respawn options matches 0 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.your_villager_has_died_can_t_respawn","color":"red"}]
