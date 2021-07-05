team join red @a[distance=..1,team=!red]
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"red"},{"text":" join team "},{"text":"red","color":"red"}]