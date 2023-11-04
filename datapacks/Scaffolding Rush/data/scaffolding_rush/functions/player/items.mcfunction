# Execute globally
# Called by scaffolding_rush:player/__main__

# Count player items before set ----------------------------------------------

execute as @a store result score @s player.item.scaffolding.count run clear @s #scaffolding_rush:scaffolding 0
execute as @a store result score @s player.item.sand.count run clear @s #scaffolding_rush:sand 0
execute as @a store result score @s player.item.fireball.count run clear @s #scaffolding_rush:fireball 0
execute as @a store result score @s player.item.ender_pearl.count run clear @s #scaffolding_rush:ender_pearl 0
execute as @a store result score @s player.item.bumping_arrow.count run clear @s #scaffolding_rush:snowball 0
execute as @a store result score @s player.item.book.count run clear @s written_book 0
execute as @a store result score @s player.item.spawn_egg.count run clear @s #scaffolding_rush:spawn_egg 0

# Update timer ----------------------------------------------------------------

scoreboard players remove @a player.item.fireball.timer 1
scoreboard players remove @a player.item.ender_pearl.timer 1
scoreboard players remove @a player.item.bumping_arrow.timer 1
scoreboard players remove @a player.item.spawn_egg.timer 1


execute if score #lobby.active data matches 1 run scoreboard players set @a[scores={player.item.spawn_egg.timer=1..}] player.item.spawn_egg.timer -1

execute as @a run scoreboard players operation @s player.item.spawn_egg.countdown = @s player.item.spawn_egg.timer
scoreboard players operation @a player.item.spawn_egg.countdown /= 20 const
scoreboard players add @a player.item.spawn_egg.countdown 1
execute as @a run scoreboard players operation @s player.item.spawn_egg.countdown -= @s player.item.spawn_egg.count


# Check if player can have spawn egg ------------------------------------------

# Can player have spawn egg?
tag @a remove player.item.can_have_spawn_egg

execute as @a[team=red,tag=!inTutorial,tag=!TeamEliminated,tag=player.item.can_have_items] \
        unless entity @e[type=villager,tag=respawn_villager,tag=red_villager] \
    run tag @s add player.item.can_have_spawn_egg

execute as @a[team=blue,tag=!inTutorial,tag=!TeamEliminated,tag=player.item.can_have_items] \
        unless entity @e[type=villager,tag=respawn_villager,tag=blue_villager] \
    run tag @s add player.item.can_have_spawn_egg

execute as @a[team=green,tag=!inTutorial,tag=!TeamEliminated,tag=player.item.can_have_items] \
        unless entity @e[type=villager,tag=respawn_villager,tag=green_villager] \
    run tag @s add player.item.can_have_spawn_egg

execute as @a[team=yellow,tag=!inTutorial,tag=!TeamEliminated,tag=player.item.can_have_items] \
        unless entity @e[type=villager,tag=respawn_villager,tag=yellow_villager] \
    run tag @s add player.item.can_have_spawn_egg

execute if score #villager.enabled options matches 1 \
        if score #lobby.active data matches 0 \
    run tag @s remove player.item.can_have_spawn_egg

# Remove items if not supposed to have them -----------------------------------

clear @a[tag=!player.item.can_have_items] #scaffolding_rush:scaffolding
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:sand
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:fireball
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:ender_pearl
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:snowball
clear @a[tag=!player.item.can_have_spawn_egg] #scaffolding_rush:spawn_egg
clear @a[scores={player.item.spawn_egg.countdown=..-1}] minecraft:ghast_spawn_egg 1
clear @a[scores={player.item.spawn_egg.countdown=1..}] #scaffolding_rush:villager_egg
clear @a[tag=!player.item.can_have_book] written_book
execute if score #player.item.sand.enabled options matches 0 run clear @a #scaffolding_rush:sand
execute if score #player.item.fireball.enabled options matches 0 run clear @a #scaffolding_rush:fireball
execute if score #player.item.ender_pearl.enabled options matches 0 run clear @a #scaffolding_rush:ender_pearl
execute if score #player.item.bumping_arrow.enabled options matches 0 run clear @a #scaffolding_rush:snowball

# Compute how many items should be given --------------------------------------

scoreboard players remove @a player.item.scaffolding.count 64
scoreboard players operation @a player.item.scaffolding.count *= -1 const

scoreboard players remove @a player.item.sand.count 64
scoreboard players operation @a player.item.sand.count *= -1 const

# Give items if needed --------------------------------------------------------

# Base items
execute as @a[tag=player.item.can_have_items,scores={player.item.scaffolding.count=1..}] \
    run loot give @s loot scaffolding_rush:scaffolding

execute as @a[tag=player.item.can_have_items,scores={player.item.sand.count=1..}] \
        if score #player.item.sand.enabled options matches 1 \
    run loot give @s loot scaffolding_rush:sand

# Spawn egg
execute as @a[tag=player.item.can_have_spawn_egg] \
        if score @s player.item.spawn_egg.countdown matches 1.. \
    run loot give @s loot scaffolding_rush:spawn_egg_countdown

execute as @a[tag=player.item.can_have_spawn_egg] \
        if score @s player.item.spawn_egg.countdown matches ..0 \
        if score @s player.item.spawn_egg.count matches 0 \
    run loot give @s loot scaffolding_rush:spawn_egg

# Special items
execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.fireball.timer matches 0 \
        if score @s player.item.fireball.count matches 0 \
        if score #player.item.fireball.enabled options matches 1 \
    run loot give @s loot scaffolding_rush:fireball

execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.ender_pearl.timer matches 0 \
        if score @s player.item.ender_pearl.count matches 0 \
        if score #player.item.ender_pearl.enabled options matches 1 \
    run loot give @s loot scaffolding_rush:ender_pearl

execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.bumping_arrow.timer matches 0 \
        if score @s player.item.bumping_arrow.count matches 0..15 \
        if score #player.item.bumping_arrow.enabled options matches 1 \
    run loot give @s loot scaffolding_rush:snowball

execute as @a[tag=player.item.can_have_book] \
        if score @s player.item.book.count matches 0 \
    run loot replace entity @s hotbar.8 loot scaffolding_rush:lobby_book

execute as @a[tag=inTutorial,scores={pos.x=5..}] \
        if score #player.item.sand.enabled options matches 1 \
        unless data entity @s Inventory[{id:"minecraft:cyan_concrete_powder"}] \
    run give @s cyan_concrete_powder 64
# Reset timer -----------------------------------------------------------------

scoreboard players set @a[scores={player.item.fireball.timer=..-1}] player.item.fireball.timer 300
scoreboard players set @a[scores={player.item.ender_pearl.timer=..-1}] player.item.ender_pearl.timer 600
scoreboard players set @a[scores={player.item.bumping_arrow.timer=..-1}] player.item.bumping_arrow.timer 40

# Count again player items after set ------------------------------------------
# In case another system need to know the how many items a player have

execute as @a store result score @s player.item.scaffolding.count run clear @s #scaffolding_rush:scaffolding 0
execute as @a store result score @s player.item.sand.count run clear @s #scaffolding_rush:sand 0
execute as @a store result score @s player.item.fireball.count run clear @s #scaffolding_rush:fireball 0
execute as @a store result score @s player.item.ender_pearl.count run clear @s #scaffolding_rush:ender_pearl 0
execute as @a store result score @s player.item.bumping_arrow.count run clear @s #scaffolding_rush:snowball 0
execute as @a store result score @s player.item.book.count run clear @s written_book 0
execute as @a store result score @s player.item.spawn_egg.count run clear @s #scaffolding_rush:spawn_egg 0