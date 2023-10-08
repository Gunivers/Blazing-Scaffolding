# Main Item Management
# =====================================

# Init score
execute as @a unless score @s player.item.scaffolding_count matches 0.. run scoreboard players set @s player.item.scaffolding_count 0
execute as @a unless score @s player.item.sand_count matches 0.. run scoreboard players set @s player.item.sand_count 0
execute as @a unless score @s player.item.fireball_count matches 0.. run scoreboard players set @s player.item.fireball_count 0
execute as @a unless score @s player.item.ender_pearl_count matches 0.. run scoreboard players set @s player.item.ender_pearl_count 0
execute as @a unless score @s player.item.bumping_arrow_count matches 0.. run scoreboard players set @s player.item.bumping_arrow_count 0

execute as @a unless score @s sc.item.real.fireball matches 0.. run scoreboard players operation @s sc.item.real.fireball = @s player.item.fireball_count
execute as @a unless score @s sc.item.real.ender_pearl matches 0.. run scoreboard players operation @s sc.item.real.ender_pearl = @s player.item.ender_pearl_count
execute as @a unless score @s sc.item.real.snowball matches 0.. run scoreboard players operation @s sc.item.real.snowball = @s player.item.bumping_arrow_count

# =====================================
# Count item in inventory
# =====================================

# Test
execute as @a store result score @s sc.item.test.scaffolding run clear @s #scaffolding_rush:item/scaffolding 0
execute as @a store result score @s sc.item.test.sand run clear @s #scaffolding_rush:item/sand 0
execute as @a store result score @s sc.item.test.fireball run clear @s #scaffolding_rush:item/fireball 0
execute as @a store result score @s sc.item.test.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl 0
execute as @a store result score @s sc.item.test.snowball run clear @s #scaffolding_rush:item/snowball 0

# =====================================
# Timers
# =====================================

# Init timers
execute as @a unless score @s sc.item.timer.fireball matches -1.. run scoreboard players set @s sc.item.timer.fireball 0
execute as @a unless score @s sc.item.timer.ender_pearl matches -1.. run scoreboard players set @s sc.item.timer.ender_pearl 0
execute as @a unless score @s sc.item.timer.snowball matches -1.. run scoreboard players set @s sc.item.timer.snowball 0

# remove 1 from timer
scoreboard players remove @a[scores={sc.item.timer.fireball=0..}] sc.item.timer.fireball 1
scoreboard players remove @a[scores={sc.item.timer.ender_pearl=0..}] sc.item.timer.ender_pearl 1
scoreboard players remove @a[scores={sc.item.timer.snowball=0..}] sc.item.timer.snowball 1

# give back items
execute as @a if score @s sc.item.timer.fireball matches 0 if score @s sc.item.real.fireball < @s player.item.fireball_count run scoreboard players add @s sc.item.real.fireball 1
execute as @a if score @s sc.item.timer.ender_pearl matches 0 if score @s sc.item.real.ender_pearl < @s player.item.ender_pearl_count run scoreboard players add @s sc.item.real.ender_pearl 1
execute as @a if score @s sc.item.timer.snowball matches 0 if score @s sc.item.real.snowball < @s player.item.bumping_arrow_count run scoreboard players add @s sc.item.real.snowball 1

# resart timers
execute as @a if score @s sc.item.timer.fireball matches -1 unless score @s sc.item.real.fireball = @s player.item.fireball_count run scoreboard players set @s sc.item.timer.fireball 300
execute as @a if score @s sc.item.timer.ender_pearl matches -1 unless score @s sc.item.real.ender_pearl = @s player.item.ender_pearl_count run scoreboard players set @s sc.item.timer.ender_pearl 600
execute as @a if score @s sc.item.timer.snowball matches -1 unless score @s sc.item.real.snowball = @s player.item.bumping_arrow_count run scoreboard players set @s sc.item.timer.snowball 40

# reflect inventory
execute as @a unless score @s sc.item.test.scaffolding = @s player.item.scaffolding_count run function scaffolding_rush:item/give/scaffolding
execute as @a unless score @s sc.item.test.sand = @s player.item.sand_count run function scaffolding_rush:item/give/sand
execute as @a[tag=!inTutorial] unless score @s sc.item.test.fireball = @s sc.item.real.fireball run function scaffolding_rush:item/give/fireball
execute as @a[tag=!inTutorial] unless score @s sc.item.test.ender_pearl = @s sc.item.real.ender_pearl run function scaffolding_rush:item/give/ender_pearl
execute as @a[tag=!inTutorial] unless score @s sc.item.test.snowball = @s sc.item.real.snowball run function scaffolding_rush:item/give/snowball

# Adjust to max
execute as @a if score @s sc.item.real.fireball > @s player.item.fireball_count run scoreboard players operation @s sc.item.real.fireball = @s player.item.fireball_count
execute as @a if score @s sc.item.real.ender_pearl > @s player.item.ender_pearl_count run scoreboard players operation @s sc.item.real.ender_pearl = @s player.item.ender_pearl_count
execute as @a if score @s sc.item.real.snowball > @s player.item.bumping_arrow_count run scoreboard players operation @s sc.item.real.snowball = @s player.item.bumping_arrow_count




