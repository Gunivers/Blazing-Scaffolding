# Executed globally
# Called by function scaffolding_rush:lobby/__main__

tag @a[tag=lobby.just_exit_protected_area] remove lobby.just_exit_protected_area
execute as @a[tag=lobby.in_protected_area] positioned -6 24 -5 unless entity @s[dx=14,dy=14,dz=14] run tag @s add lobby.just_exit_protected_area

execute as @a[tag=lobby.just_exit_protected_area] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 2 0
tellraw @a[tag=lobby.just_exit_protected_area,tag=!lobby.already_seen_playground_message,scores={option_language=0},x=0,y=100,z=0,distance=..500] [{"text":"Welcome to the training playground!","color":"gold","bold":true},{"text":"\n\nYou can test here all the game mechanics. These mechanics are adapted to the selected preset/options.\n\nNote that the worldborder and the bases' position reflect the game's ones.","color":"gray","bold":false},{"text":"\n---","color":"gold","bold":true}]
tellraw @a[tag=lobby.just_exit_protected_area,tag=!lobby.already_seen_playground_message,scores={option_language=1},x=0,y=100,z=0,distance=..500] [{"text":"Bienvenue sur le terrain d'entrainement !","color":"gold","bold":true},{"text":"\n\nVous pouvez tester ici toutes les mécaniques de jeu. Ces mécaniques s'adaptent au(x) preset/options sélectionnées.\n\nNotez que la bordure du monde ainsi que la position des bases reflètent celles de la prochaine partie.","color":"gray","bold":false},{"text":"\n---","color":"gold","bold":true}]
tag @a[tag=lobby.just_exit_protected_area] add lobby.already_seen_playground_message

tag @a[tag=lobby.in_protected_area] remove lobby.in_protected_area
tag @a add player.item.can_have_items

execute positioned -6 24 -5 as @a[dx=14,dy=14,dz=14] run function scaffolding_rush:lobby/protection/player_in_protected_area
execute positioned -6 24 -5 as @e[type=arrow,dx=14,dy=14,dz=14] at @s run function scaffolding_rush:lobby/protection/projectile_in_protected_area
execute positioned -6 22 -5 as @e[tag=Fireball,dx=14,dy=16,dz=14] at @s positioned ~ ~1.7 ~ run function scaffolding_rush:lobby/protection/projectile_in_protected_area
