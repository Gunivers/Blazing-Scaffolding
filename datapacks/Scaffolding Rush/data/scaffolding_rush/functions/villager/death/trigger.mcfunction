
execute if score #villager.invulnerable options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-0.0001 ~ magma_block run kill @s

# Kill Villager behind WB
execute unless score #game.loading data matches 1 as @e[type=villager,tag=respawn_villager] if score @s pos.x > WBbyTwo data run kill @s
execute unless score #game.loading data matches 1 as @e[type=villager,tag=respawn_villager] if score @s pos.x < -WBbyTwo data run kill @s
execute unless score #game.loading data matches 1 as @e[type=villager,tag=respawn_villager] if score @s pos.z > WBbyTwo data run kill @s
execute unless score #game.loading data matches 1 as @e[type=villager,tag=respawn_villager] if score @s pos.z < -WBbyTwo data run kill @s

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

title @s[tag=TeamEliminated] actionbar ["",{"translate":"blazing_scaffolding.you_can_t_respawn","color":"dark_red"}]
