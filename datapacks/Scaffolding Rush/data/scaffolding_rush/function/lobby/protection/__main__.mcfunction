# Executed globally
# Called by function scaffolding_rush:lobby/__main__

tag @a[tag=lobby.just_exit_protected_area] remove lobby.just_exit_protected_area
execute as @a[tag=lobby.in_protected_area] positioned -6 24 -5 unless entity @s[dx=14,dy=14,dz=14] run tag @s add lobby.just_exit_protected_area

execute as @a[tag=lobby.just_exit_protected_area] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 2 0
tellraw @a[tag=lobby.just_exit_protected_area,tag=!lobby.already_seen_playground_message,x=0,y=100,z=0,distance=..500] [{"translate":"blazing_scaffolding.welcome_training","color":"gold","bold":true},{"translate":"blazing_scaffolding.welcome_training_you_can","color":"gray","bold":false},{"text":"\n---","color":"gold","bold":true}]
tag @a[tag=lobby.just_exit_protected_area] add lobby.already_seen_playground_message

tag @a[tag=lobby.in_protected_area] remove lobby.in_protected_area
tag @a add player.item.can_have_items

execute positioned -6 24 -5 as @a[dx=14,dy=14,dz=14] run function scaffolding_rush:lobby/protection/player_in_protected_area
execute positioned -6 24 -5 as @e[type=arrow,dx=14,dy=14,dz=14] at @s run function scaffolding_rush:lobby/protection/projectile_in_protected_area
execute positioned -6 22 -5 as @e[tag=Fireball,dx=14,dy=16,dz=14] at @s positioned ~ ~1.7 ~ run function scaffolding_rush:lobby/protection/projectile_in_protected_area
