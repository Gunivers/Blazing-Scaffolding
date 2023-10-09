# Executed globally
# Called by function scaffolding_rush:lobby/__main__


execute positioned -6 24 -5 as @a[dx=14,dy=14,dz=14] run function scaffolding_rush:lobby/protection/player_in_protected_area
execute positioned -6 24 -5 as @e[type=arrow,dx=14,dy=14,dz=14] at @s run tag @s add LobbyProtection
execute positioned -6 24 -5 as @e[tag=Fireball,dx=14,dy=14,dz=14] at @s run tag @s add LobbyProtection

execute positioned -6 24 -5 as @a unless entity @s[dx=14,dy=14,dz=14] run tag @s add player.item.can_have_items