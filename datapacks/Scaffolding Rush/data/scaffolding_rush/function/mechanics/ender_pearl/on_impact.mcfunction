# Executed on ender_pearl-like entity

execute as @s[tag=!TP_cancelled] run function glib.id:check
execute as @s[tag=!TP_cancelled] at @s positioned ~ ~2.1 ~ run tp @a[tag=glib.id.match] ~ ~ ~
execute as @s[tag=!TP_cancelled] run playsound minecraft:entity.enderman.teleport master @a[tag=glib.id.match] ~ ~ ~ 2 1 1

execute as @s[tag=TP_cancelled] at @a[tag=glib.id.match] run playsound minecraft:entity.player.hurt_on_fire master @a[tag=glib.id.match] ~ ~ ~ 1 2 0.5