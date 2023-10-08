
execute if score @s sc.item.test.sand > @s player.item.sand_count run clear @s #scaffolding_rush:item/sand
execute store result score @s sc.item.test.sand run clear @s #scaffolding_rush:item/sand 0

scoreboard players set #give_item tmp 0
scoreboard players operation #give_item tmp = @s player.item.sand_count
scoreboard players operation #give_item tmp -= @s sc.item.test.sand

#give sand to players outside the tutorial
execute if entity @s[tag=!inTutorial] if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:item/sand
#give sand to players at the last step of the tutorial
execute if score @s[tag=inTutorial] pos.x matches 5.. run loot give @s loot scaffolding_rush:item/sand_tutorial

