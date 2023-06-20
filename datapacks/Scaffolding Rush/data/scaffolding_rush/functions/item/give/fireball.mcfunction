
execute if score @s sc.item.test.fireball > @s sc.item.real.fireball run clear @s #scaffolding_rush:item/fireball
execute store result score @s sc.item.test.fireball run clear @s #scaffolding_rush:item/fireball 0

scoreboard players set @s sc.item.give.fireball 0
scoreboard players operation @s sc.item.give.fireball = @s sc.item.real.fireball
scoreboard players operation @s sc.item.give.fireball -= @s sc.item.test.fireball

execute if score @s sc.item.give.fireball matches 1.. run loot give @s loot scaffolding_rush:item/fireball

