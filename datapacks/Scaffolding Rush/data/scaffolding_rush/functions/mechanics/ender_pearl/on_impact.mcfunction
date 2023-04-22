# Executed on ender_pearl-like entity

execute as @s[tag=!TP_cancelled] run function glib.id:check
execute as @s[tag=!TP_cancelled] at @s positioned ~ ~2.1 ~ run tp @a[tag=glib.id.match] ~ ~ ~