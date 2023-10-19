# Execute as & at the player

scoreboard players add @s language 0

function glib.id:get_suid

execute store result score @s uuid run data get entity @s UUID[0]

scoreboard players set @s player.item.fireball.timer 0
scoreboard players set @s player.item.ender_pearl.timer 0
scoreboard players set @s player.item.bumping_arrow.timer 0

scoreboard players add @s player.death.animation 0

scoreboard players enable @s language

tag @a remove lobby.already_seen_playground_message

advancement grant @s only scaffolding_rush:rewards/die_streak/__main__
advancement grant @s only scaffolding_rush:rewards/kill_streak/__main__
advancement grant @s only scaffolding_rush:rewards/tutorial/__main__
advancement grant @s only scaffolding_rush:rewards/win_streak/__main__