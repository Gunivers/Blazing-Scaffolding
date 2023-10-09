
tellraw @s[scores={option.language=0}] ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Don't know how to use a scaffolding?\n","color":"white"},{"text":"[join the tutorial]","color":"#38ec26","clickEvent":{"action":"run_command","value":"/trigger trigger.tutorial"}},{"text":"\n\n======================","color":"gray"}]
tellraw @s[scores={option.language=1}] ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Tu ne sais pas comment utiliser les échaffaudages ?\n","color":"white"},{"text":"[rejoindre le tutoriel]","color":"#38ec26","clickEvent":{"action":"run_command","value":"/trigger trigger.tutorial"}},{"text":"\n\n======================","color":"gray"}]
playsound block.note_block.bell ambient @s ~ ~ ~ 1000 1.41
