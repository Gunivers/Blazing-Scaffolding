# Executed globally
# Called by function scaffolding_rush:lobby/__main__

tag @a[tag=lobby.just_exit_protected_area] remove lobby.just_exit_protected_area
execute as @a[tag=lobby.in_protected_area] positioned -6 24 -5 unless entity @s[dx=14,dy=14,dz=14] run tag @s add lobby.just_exit_protected_area
tag @a[tag=lobby.in_protected_area] remove lobby.in_protected_area
tag @a add player.item.can_have_items

execute positioned -6 24 -5 as @a[dx=14,dy=14,dz=14] run function scaffolding_rush:lobby/protection/player_in_protected_area
execute positioned -6 24 -5 as @e[type=arrow,dx=14,dy=14,dz=14] at @s run function scaffolding_rush:lobby/protection/projectile_in_protected_area
execute positioned -6 24 -5 as @e[tag=Fireball,dx=14,dy=14,dz=14] at @s run function scaffolding_rush:lobby/protection/projectile_in_protected_area
