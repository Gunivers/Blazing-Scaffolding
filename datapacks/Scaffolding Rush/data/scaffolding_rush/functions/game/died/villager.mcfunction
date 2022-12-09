#kill villager
execute if entity @s[type=minecraft:villager] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @a ~ ~ ~
execute if entity @s[type=minecraft:villager] run function scaffolding_rush:clean_kill
