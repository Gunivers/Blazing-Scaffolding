scoreboard players add timer snowballs 1
execute as @a store result score @s snowballs run clear @s minecraft:snowball 0
execute if score timer snowballs matches 40.. as @a[scores={snowballs=0}] run clear @s snowball
execute if score timer snowballs matches 40.. if score UseSnowball options matches 1.. as @a[scores={snowballs=..15},tag=HaveItems] run loot give @s loot scaffolding_rush:item/snowball
execute if score timer snowballs matches 40.. run scoreboard players set timer snowballs 0