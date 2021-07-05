team join green @a[distance=..1,team=!green]
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"green"},{"text":" join team "},{"text":"green","color":"green"}]