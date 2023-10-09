# When player click on villager

# In game
execute unless score #game.loading data matches 1 \
        unless score #village.movable options matches 0 \
        if entity @s[scores={player.pick_villager_cooldown=..0},tag=!Respawning] \
        as @e[type=villager,tag=blue_villager] \
        if entity @a[advancements={scaffolding_rush:grab_villager/blue=true}] \
    run function utils:clean_kill
execute unless score #game.loading data matches 1 \
        unless score #village.movable options matches 0 \
        if entity @s[scores={player.pick_villager_cooldown=..0},tag=!Respawning] \
        as @e[type=villager,tag=green_villager] \
        if entity @a[advancements={scaffolding_rush:grab_villager/green=true}] \
    run function utils:clean_kill
execute unless score #village.movable options matches 0 if entity @s[scores={player.pick_villager_cooldown=..0},tag=!Respawning] as @e[type=villager,tag=red_villager] if entity @a[advancements={scaffolding_rush:grab_villager/red=true}] run function utils:clean_kill
execute unless score #village.movable options matches 0 if entity @s[scores={player.pick_villager_cooldown=..0},tag=!Respawning] as @e[type=villager,tag=yellow_villager] if entity @a[advancements={scaffolding_rush:grab_villager/yellow=true}] run function utils:clean_kill

execute if score #village.movable options matches 1 run tag @s add player.item.can_have_spawn_egg

#inform the player if the option is disabled
execute if score #village.movable options matches 0 run tellraw @s ["",{"text":"/!\\ You can't move the villager\n/!\\ That option is ","color":"gold"},{"text":"disabled","color":"red"},{"text":" !","color":"gold"}]
