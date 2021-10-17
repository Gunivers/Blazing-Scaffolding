execute as @a run tellraw @s[scores={language=0}] ["",{"text":"[SR]","color":"gold"},{"text":" A game will start in 10 seconds!","color":"gray"}]
execute as @a run tellraw @s[scores={language=1}] ["",{"text":"[SR]","color":"gold"},{"text":" Une partie va commencer dans 10 secondes !","color":"gray"}]
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 1 1
