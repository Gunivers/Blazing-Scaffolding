scoreboard players add timer snowballs 1
execute as @a store result score @s snowballs run data get entity @s Inventory[{id:"minecraft:snowball"}].Count
execute if score timer snowballs matches 20.. as @a[scores={snowballs=0}] run clear @s snowball
execute if score timer snowballs matches 20.. if score UseSnowball options matches 1.. as @a[scores={snowballs=..9},tag=CanUseSnowball] run loot give @s loot scaffolding_rush:item/snowball
execute if score timer snowballs matches 20.. run scoreboard players set timer snowballs 0