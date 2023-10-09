playsound minecraft:block.stone_button.click_on master @a ~ ~ ~ 1 2 0

execute if score #villager.can_respawn options matches 1 run tellraw @s[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"You can place your villager anywhere on the lobby to choose where your base will appear when the game will start!","color":"gray"}]

execute if score #villager.can_respawn options matches 1 run tellraw @s[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Vous pouvez poser votre villageois n'importe où sur le lobby pour choisir où votre base apparaitra une fois la partie lancée !","color":"gray"}]