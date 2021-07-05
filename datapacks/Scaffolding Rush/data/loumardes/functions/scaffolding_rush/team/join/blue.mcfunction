team join blue @a[distance=..1,team=!blue]
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"blue"},{"text":" join team "},{"text":"blue","color":"blue"}]