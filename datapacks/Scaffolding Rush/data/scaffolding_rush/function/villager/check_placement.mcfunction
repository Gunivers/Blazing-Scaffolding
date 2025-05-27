
# Cancel lobby villager placement if too close to worldborder or too close to others bases


# Worldborder proximity :
execute store result score @s pos.x run data get entity @s Pos[0]
execute store result score @s pos.z run data get entity @s Pos[2]

scoreboard players operation WBGap data = WBbyTwo data
scoreboard players operation WBGap data -= 2 const

scoreboard players operation -WBGap data = -WBbyTwo data
scoreboard players operation -WBGap data += 2 const

execute if score @s pos.x > WBGap data run tag @s add worldborder_obstruction
execute if score @s pos.x < -WBGap data run tag @s add worldborder_obstruction
execute if score @s pos.z > WBGap data run tag @s add worldborder_obstruction
execute if score @s pos.z < -WBGap data run tag @s add worldborder_obstruction

execute if entity @s[tag=worldborder_obstruction] run tellraw @a[tag=player_place_base] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.base.near_worldborder","color":"red"}]
execute if entity @s[tag=worldborder_obstruction] run kill @s

# other bases proximity
execute if entity @e[type=villager,tag=respawn_villager, distance=..20] run tag @s add base_obstruction

execute if entity @s[tag=base_obstruction] run tellraw @a[tag=player_place_base] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.base.near_other_bases","color":"red"}]
execute if entity @s[tag=base_obstruction] run kill @s

#confirmation message
execute if entity @s[tag=!worldborder_obstruction,tag=!base_obstruction] run tellraw @a[tag=player_place_base] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.base.placement_set"}]
