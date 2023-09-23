
execute if score @s sc.item.test.sand > @s sc.item.sand run clear @s #scaffolding_rush:item/sand
execute store result score @s sc.item.test.sand run clear @s #scaffolding_rush:item/sand 0

scoreboard players set @s sc.item.give.sand 0
scoreboard players operation @s sc.item.give.sand = @s sc.item.sand
scoreboard players operation @s sc.item.give.sand -= @s sc.item.test.sand

#give sand to players outside the tutorial
execute if score @s[tag=!inTutorial] sc.item.give.sand matches 1.. run loot give @s loot scaffolding_rush:item/sand
#give sand to players at the last step of the tutorial
execute if score @s[tag=inTutorial] XEntity matches 5.. run loot give @s loot scaffolding_rush:item/sand_tutorial

