
scoreboard players set @s sc.item.sand 42

tellraw @s[scores={language=0}]  ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Tutorial [5/5]","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Use the ","color":"white"},{"text":"[Sand] ","color":"gold"},{"text":"on top of scaffoldings to support a ","color":"white"},{"text":"new ","color":"gold"},{"text":"scaffolding line when you either can't or don't have time to make regular supports","color":"white"},{"text":"\n\n"},{"text":"======================","color":"gray"}]
tellraw @s[scores={language=1}]  ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Tutoriel [5/5]","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Place un bloc de ","color":"white"},{"text":"[Sable] ","color":"gold"},{"text":" par dessus l'échaffaudage pour créer une ","color":"white"},{"text":"nouvelle ","color":"gold"},{"text":"ligne d'échaffaudage quand tu ne peux pas faire de pillier classique","color":"white"},{"text":"\n\n"},{"text":"======================","color":"gray"}]
playsound block.note_block.bell ambient @s ~ ~ ~ 1000 1.41

tag @s add TutorialMessage5