# Execute globally
# Called by scaffolding_rush:player/__main__

# Count player items ----------------------------------------------------------

execute as @a store result score @s player.item.scaffolding.count run clear @s #scaffolding_rush:scaffolding 0
execute as @a store result score @s player.item.sand.count run clear @s #scaffolding_rush:sand 0
execute as @a store result score @s player.item.fireball.count run clear @s #scaffolding_rush:fireball 0
execute as @a store result score @s player.item.ender_pearl.count run clear @s #scaffolding_rush:ender_pearl 0
execute as @a store result score @s player.item.bumping_arrow.count run clear @s #scaffolding_rush:snowball 0
execute as @a store result score @s player.item.book.count run clear @s written_book 0

# Update timer ----------------------------------------------------------------

scoreboard players remove @a player.item.fireball.timer 1
scoreboard players remove @a player.item.ender_pearl.timer 1
scoreboard players remove @a player.item.bumping_arrow.timer 1

# Remove items if not supposed to have them -----------------------------------

clear @a[tag=!player.item.can_have_items] #scaffolding_rush:scaffolding
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:sand
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:fireball
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:ender_pearl
clear @a[tag=!player.item.can_have_items] #scaffolding_rush:snowball
clear @a[tag=!player.item.can_have_book] written_book

# Compute how many items should be given --------------------------------------

scoreboard players set #give_scaffolding tmp 64
scoreboard players operation #give_scaffolding tmp -= @a player.item.scaffolding.count

scoreboard players set #give_sand tmp 64
scoreboard players operation #give_sand tmp -= @a player.item.sand.count

# Give items if needed --------------------------------------------------------

execute as @a[tag=player.item.can_have_items] \
        if score #give_scaffolding tmp matches 1.. \
    run loot give @s loot scaffolding_rush:scaffolding

execute as @a[tag=player.item.can_have_items] \
        if score #give_sand tmp matches 1.. \
    run loot give @s loot scaffolding_rush:sand

# Give items
execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.fireball.timer matches 0 \
        if score @s player.item.fireball.count matches 0 \
    run loot give @s loot scaffolding_rush:fireball

execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.ender_pearl.timer matches 0 \
        if score @s player.item.ender_pearl.count matches 0 \
    run loot give @s loot scaffolding_rush:ender_pearl

execute as @a[tag=!inTutorial,tag=player.item.can_have_items] \
        if score @s player.item.bumping_arrow.timer matches 0 \
        if score @s player.item.bumping_arrow.count matches 0..15 \
    run loot give @s loot scaffolding_rush:snowball

execute as @a[tag=player.item.can_have_book] \
        if score @s player.item.book.count matches 0 \
    run loot replace entity @s hotbar.8 loot scaffolding_rush:lobby_book

# Reset timer -----------------------------------------------------------------

scoreboard players set @a[scores={player.item.fireball.timer=..-1}] player.item.fireball.timer 300
scoreboard players set @a[scores={player.item.fireball.timer=..-1}] player.item.ender_pearl.timer 600
scoreboard players set @a[scores={player.item.fireball.timer=..-1}] player.item.bumping_arrow.timer 40



