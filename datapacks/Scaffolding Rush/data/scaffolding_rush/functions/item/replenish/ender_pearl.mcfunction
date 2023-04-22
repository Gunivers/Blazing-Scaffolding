scoreboard players add @a enderpearl_timer 0
scoreboard players add @a[tag=HaveItems,scores={enderpearl_timer=..199}] enderpearl_timer 1

execute as @a store result score @s enderpearl_count run clear @s ender_pearl 0


scoreboard players set @a[scores={enderpearl_count=0,enderpearl_timer=200..}] enderpearl_timer 0
scoreboard players set @a[scores={enderpearl_count=1..}] enderpearl_timer 200


execute as @a[scores={enderpearl_timer=199,enderpearl_count=0},tag=HaveItems] run loot give @s loot scaffolding_rush:item/ender_pearl
