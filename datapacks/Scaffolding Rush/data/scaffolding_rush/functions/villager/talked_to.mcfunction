# When player click on villager

# In game
execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if entity @s[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/red=true},scores={player.pick_villager_cooldown=..0}] \
        as @e[type=villager,tag=red_villager] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if entity @s[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/blue=true},scores={player.pick_villager_cooldown=..0}] \
        as @e[type=villager,tag=blue_villager] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if entity @s[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/green=true},scores={player.pick_villager_cooldown=..0}] \
        as @e[type=villager,tag=green_villager] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if entity @s[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/yellow=true},scores={player.pick_villager_cooldown=..0}] \
        as @e[type=villager,tag=yellow_villager] \
    run function utils:clean_kill

advancement revoke @s[team=red] only scaffolding_rush:grab_villager/red
advancement revoke @s[team=blue] only scaffolding_rush:grab_villager/blue
advancement revoke @s[team=green] only scaffolding_rush:grab_villager/green
advancement revoke @s[team=yellow] only scaffolding_rush:grab_villager/yellow

execute if score #villager.movable options matches 1 run tag @s add player.item.can_have_spawn_egg

execute if entity @s[team=red,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=red] player.item.spawn_egg.timer = #villager.respawn.tick options
execute if entity @s[team=blue,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=blue] player.item.spawn_egg.timer = #villager.respawn.tick options
execute if entity @s[team=green,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=green] player.item.spawn_egg.timer = #villager.respawn.tick options
execute if entity @s[team=yellow,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=yellow] player.item.spawn_egg.timer = #villager.respawn.tick options

execute if entity @s[team=red,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=red] player.item.spawn_egg.timer /= 2 const
execute if entity @s[team=blue,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=blue] player.item.spawn_egg.timer /= 2 const
execute if entity @s[team=green,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=green] player.item.spawn_egg.timer /= 2 const
execute if entity @s[team=yellow,scores={player.pick_villager_cooldown=..0}] run scoreboard players operation @a[team=yellow] player.item.spawn_egg.timer /= 2 const

scoreboard players set @s[scores={player.pick_villager_cooldown=..0}] player.item.spawn_egg.timer 100

#inform the player if the option is disabled
execute if score #villager.movable options matches 0 run tellraw @s ["",{"text":"/!\\ You can't move the villager\n/!\\ That option is ","color":"gold"},{"text":"disabled","color":"red"},{"text":" !","color":"gold"}]
