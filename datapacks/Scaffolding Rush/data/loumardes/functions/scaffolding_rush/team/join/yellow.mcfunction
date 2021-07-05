team join yellow @a[distance=..1,team=!yellow]
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" join team "},{"text":"yellow","color":"yellow"}]