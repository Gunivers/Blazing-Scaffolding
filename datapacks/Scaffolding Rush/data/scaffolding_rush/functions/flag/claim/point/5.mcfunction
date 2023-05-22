tag @s remove flagFive

title @s times 0 20 0
title @s title {"text":"+5","color":"dark_red"}

execute if entity @s[team=blue] run tellraw @a ["",{"text":"[","color":"blue"},{"selector":"@s","color":"blue"},{"text":"]","color":"blue"},{"text":" +2 points","color":"gray"}]
execute if entity @s[team=green] run tellraw @a ["",{"text":"[","color":"green"},{"selector":"@s","color":"green"},{"text":"]","color":"green"},{"text":" +2 points","color":"gray"}]
execute if entity @s[team=red] run tellraw @a ["",{"text":"[","color":"red"},{"selector":"@s","color":"red"},{"text":"]","color":"red"},{"text":" +2 points","color":"gray"}]
execute if entity @s[team=yellow] run tellraw @a ["",{"text":"[","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":"]","color":"yellow"},{"text":" +2 points","color":"gray"}]

execute if entity @s[team=blue] at @s run playsound block.note_block.bell ambient @a[team=blue] ~ ~ ~ 1000 2 1
execute if entity @s[team=green] at @s run playsound block.note_block.bell ambient @a[team=green] ~ ~ ~ 1000 2 1
execute if entity @s[team=red] at @s run playsound block.note_block.bell ambient @s[team=red] ~ ~ ~ 1000 2 1
execute if entity @s[team=yellow] at @s run playsound block.note_block.bell ambient @s[team=yellow] ~ ~ ~ 1000 2 1

execute if entity @s[team=blue] at @s run playsound block.note_block.bell ambient @a[team=!blue] ~ ~ ~ 1000 0.65 0.3
execute if entity @s[team=green] at @s run playsound block.note_block.bell ambient @a[team=!green] ~ ~ ~ 1000 0.65 0.3
execute if entity @s[team=red] at @s run playsound block.note_block.bell ambient @s[team=!red] ~ ~ ~ 1000 0.65 0.3
execute if entity @s[team=yellow] at @s run playsound block.note_block.bell ambient @s[team=!yellow] ~ ~ ~ 1000 0.65 0.3
