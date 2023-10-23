# Execute as & at the player
# Called by functions scaffolding_rush:player/death/trigger and scaffolding_rush:player/death/<type>/animation

scoreboard players operation @s respawn.timer = #respawn.delay.tick options
scoreboard players operation @s respawn.timer > 1 const

title @s times 0 10 10

gamemode spectator @s
tag @s remove player.death.drown_in_lava
tag @s remove player.death.killed_by_player
tag @s add player.item.can_have_items