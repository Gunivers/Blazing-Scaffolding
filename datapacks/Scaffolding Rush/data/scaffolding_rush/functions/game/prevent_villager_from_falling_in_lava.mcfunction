#prevent the villager from falling in the lava

execute at @s positioned ~-1 ~-2 ~-1 align xyz as @a[gamemode=!spectator,dx=2,dy=2,dz=2] at @s run tp @s ~ ~1 ~ ~ ~

#teleport it above the lava
tp @s ~ ~1 ~ ~ ~

#place support blocks
execute if entity @s[tag=respawn_villager] run fill ~-1 ~ ~-1 ~1 ~-2 ~1 blackstone replace #scaffolding_rush:air
