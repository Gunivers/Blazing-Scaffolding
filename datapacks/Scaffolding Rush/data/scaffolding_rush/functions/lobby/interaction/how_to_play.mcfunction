
execute as @a store result score @s playerID run data get entity @s UUID[0]
execute store result score @s interactionID run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID run tellraw @s[scores={language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" How do you play Blazing Scaffolding? Good question!\nUsing scaffolds build up to escape the rising lava!\n\nPlace your team's villager somewhere safe as it is where you respawn.\n\nYou can take it with you using right click but be careful as your team cannot respawn until it is placed again.\n\nWin by throwing opposing teams and their villagers into the lava until you are the last team standing!","color":"gray"}]
execute as @a if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID run tellraw @s[scores={language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" Comment jouer à Blazing Scaffolding? Bonne question !\nConstruisez avec les échaffaudages pour échapper à la lave qui monte.\n\nPlacez votre villageois d'équipe pour réapparaître.\n\nVous pouvez le déplacer en cliquant dessus, mais attention, vos coéquipiers ne pourront plus réapparaître tant que vous l'avez.\n\nRemportez la victoire en poussant vos adversaires dans la lave, il n'en restera qu'un !","color":"gray"}]
execute as @a if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 1 1 1

tag @s remove interactionSelect

#Build scaffoldings to escape the rising lava

#Place your team's villager somewhere safe to respawn there

#Take it with you using right click, but
#be aware that your team can't respawn until it is placed again

#Win by pushing opposing teams and villagers into the lava
#until you are the last remaining







