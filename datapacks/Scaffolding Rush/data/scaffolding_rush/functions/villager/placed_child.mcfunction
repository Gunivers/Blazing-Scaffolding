$execute as @e[type=marker,tag=villager.spawner.$(color)] at @s run function scaffolding_rush:villager/summon/$(color)

$execute if score #lobby.active data matches 1 \
        as @e[tag=$(color)_villager,tag=respawn_villager] \
        at @s \
        unless block ~ ~-1 ~ #scaffolding_rush:sand \
        unless block ~ ~-1 ~ #scaffolding_rush:scaffolding \
        unless entity @e[tag=base.maker,distance=..0.5] \
    run function scaffolding_rush:villager/base/build

$execute if entity @s[team=$(color)] run scoreboard players set @a[team=$(color)] player.item.spawn_egg.timer 0

$scoreboard players set @a listener.use.$(color)_spawn_egg 0