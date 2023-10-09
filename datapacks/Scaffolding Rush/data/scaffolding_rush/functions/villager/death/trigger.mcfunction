
execute if score #villager.cannot_fall_in_lava options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-0.0001 ~ magma_block run kill @s

# Red
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=red,tag=TeamEliminated] \
        unless entity @a[team=red,tag=player.item.can_have_spawn_egg] \
        unless entity @e[type=villager,tag=respawn_villager,tag=red_villager] \
    run function scaffolding_rush:villager/death/just_died/red

# Blue
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=blue,tag=TeamEliminated] \
        unless entity @a[team=blue,tag=player.item.can_have_spawn_egg] \
        unless entity @e[type=villager,tag=respawn_villager,tag=blue_villager] \
    run function scaffolding_rush:villager/death/just_died/blue

# Yellow
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=yellow,tag=TeamEliminated] \
        unless entity @a[team=yellow,tag=player.item.can_have_spawn_egg] \
        unless entity @e[type=villager,tag=respawn_villager,tag=yellow_villager] \
    run function scaffolding_rush:villager/death/just_died/yellow

# Green
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=green,tag=TeamEliminated] \
        unless entity @a[team=green,tag=player.item.can_have_spawn_egg] \
        unless entity @e[type=villager,tag=respawn_villager,tag=green_villager] \
    run function scaffolding_rush:villager/death/just_died/green

title @s[scores={option.language=0},tag=TeamEliminated] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @s[scores={option.language=1},tag=TeamEliminated] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]