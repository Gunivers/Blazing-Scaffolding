# Main Item Management
# =====================================

# Init score
execute as @a unless score @s sc.item.scaffolding matches 0.. run scoreboard players set @s sc.item.scaffolding 0
execute as @a unless score @s sc.item.sand matches 0.. run scoreboard players set @s sc.item.sand 0
execute as @a unless score @s sc.item.fireball matches 0.. run scoreboard players set @s sc.item.fireball 0
execute as @a unless score @s sc.item.ender_pearl matches 0.. run scoreboard players set @s sc.item.ender_pearl 0
execute as @a unless score @s sc.item.snowball matches 0.. run scoreboard players set @s sc.item.snowball 0

execute as @a unless score @s sc.item.real.fireball matches 0.. run scoreboard players operation @s sc.item.real.fireball = @s sc.item.fireball
execute as @a unless score @s sc.item.real.ender_pearl matches 0.. run scoreboard players operation @s sc.item.real.ender_pearl = @s sc.item.ender_pearl
execute as @a unless score @s sc.item.real.snowball matches 0.. run scoreboard players operation @s sc.item.real.snowball = @s sc.item.snowball

# =====================================
# Count item in inventory
# =====================================

# Test
execute as @a store result score @s sc.item.test.scaffolding run clear @s #scaffolding_rush:item/scaffolding 0
execute as @a store result score @s sc.item.test.sand run clear @s #scaffolding_rush:item/sand 0
execute as @a store result score @s sc.item.test.fireball run clear @s #scaffolding_rush:item/fireball 0
execute as @a store result score @s sc.item.test.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl 0
execute as @a store result score @s sc.item.test.snowball run clear @s #scaffolding_rush:item/snowball 0

# # Using items
# execute as @a if score @s sc.item.test.fireball < @s sc.item.real.fireball run scoreboard players remove @s sc.item.real.fireball 1
# execute as @a if score @s sc.item.test.ender_pearl < @s sc.item.real.ender_pearl run scoreboard players remove @s sc.item.real.ender_pearl 1
# execute as @a if score @s sc.item.test.snowball < @s sc.item.real.snowball run scoreboard players remove @s sc.item.real.snowball 1

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
execute as @a if score @s sc.item.timer.fireball matches 0 unless score @s sc.item.test.fireball >= @s sc.item.fireball run scoreboard players add @s sc.item.real.fireball 1
execute as @a if score @s sc.item.timer.ender_pearl matches 0 unless score @s sc.item.test.ender_pearl >= @s sc.item.ender_pearl run scoreboard players add @s sc.item.real.ender_pearl 1
execute as @a if score @s sc.item.timer.snowball matches 0 unless score @s sc.item.test.snowball >= @s sc.item.snowball run scoreboard players add @s sc.item.real.snowball 1

# resart timers
execute as @a if score @s sc.item.timer.fireball matches -1 unless score @s sc.item.real.fireball = @s sc.item.fireball run scoreboard players set @s sc.item.timer.fireball 100
execute as @a if score @s sc.item.timer.ender_pearl matches -1 unless score @s sc.item.real.ender_pearl = @s sc.item.ender_pearl run scoreboard players set @s sc.item.timer.ender_pearl 100
execute as @a if score @s sc.item.timer.snowball matches -1 unless score @s sc.item.real.snowball = @s sc.item.snowball run scoreboard players set @s sc.item.timer.snowball 100

# reflect inventory
execute as @a unless score @s sc.item.test.scaffolding = @s sc.item.scaffolding run function scaffolding_rush:item/give/scaffolding
execute as @a unless score @s sc.item.test.sand = @s sc.item.sand run function scaffolding_rush:item/give/sand
execute as @a unless score @s sc.item.test.fireball = @s sc.item.real.fireball run function scaffolding_rush:item/give/fireball
execute as @a unless score @s sc.item.test.ender_pearl = @s sc.item.real.ender_pearl run function scaffolding_rush:item/give/ender_pearl
execute as @a unless score @s sc.item.test.snowball = @s sc.item.real.snowball run function scaffolding_rush:item/give/snowball

# Adjust to max
execute as @a unless score @s sc.item.real.fireball > @s sc.item.fireball run scoreboard players operation @s sc.item.fireball = @s sc.item.fireball
execute as @a unless score @s sc.item.real.ender_pearl > @s sc.item.ender_pearl run scoreboard players operation @s sc.item.ender_pearl = @s sc.item.ender_pearl
execute as @a unless score @s sc.item.real.snowball > @s sc.item.snowball run scoreboard players operation @s sc.item.snowball = @s sc.item.snowball




