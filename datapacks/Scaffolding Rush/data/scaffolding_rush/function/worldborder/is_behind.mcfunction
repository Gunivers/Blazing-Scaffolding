# is Outside world border or below the world ?
# if yes, add behind_worldborder tag

#function scaffolding_rush:worldborder/is_behind

#check X
execute if score @s pos.x > WBbyTwo data run tag @s add behind_worldborder
execute if score @s pos.x < -WBbyTwo data run tag @s add behind_worldborder

#check Y
execute if score @s pos.y < 0 const run tag @s add behind_worldborder

#check Z
execute if score @s pos.z > WBbyTwo data run tag @s add behind_worldborder
execute if score @s pos.z < -WBbyTwo data run tag @s add behind_worldborder
