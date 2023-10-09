execute as @e[tag=lobbyMagma1] at @s run teleport @s ~0.015 ~ ~
execute as @e[tag=lobbyMagma2] at @s run teleport @s ~0.017 ~ ~
execute as @e[tag=lobbyMagma3] at @s run teleport @s ~0.01 ~ ~

execute as @e[type=minecraft:block_display,tag=lobbyMagma] store result score @s pos.x run data get entity @s Pos[0]
execute as @e[type=minecraft:block_display,tag=lobbyMagma] at @s if score @s pos.x matches 9.. run kill @s

execute unless entity @e[type=minecraft:block_display,tag=lobbyMagma1] run summon minecraft:block_display -6 26.0 10.5 {block_state: {Name: 'minecraft:magma_block'}, Tags: ["lobbyText", "lobbyMagma", "lobbyMagma1"], transformation: {translation: [0f, 0f, 0f], left_rotation: [-0.401f, 0.318f, -0.037f, 0.858f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, interpolation_duration: 20, brightness: {block: 15, sky: 15}}
execute unless entity @e[type=minecraft:block_display,tag=lobbyMagma2] run summon minecraft:block_display -6 30.0 10.5 {block_state: {Name: 'minecraft:magma_block'}, Tags: ["lobbyText", "lobbyMagma", "lobbyMagma2"], transformation: {translation: [0f, 0f, 0f], left_rotation: [0.14f, 0.834f, 0.237f, 0.478f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, interpolation_duration: 20, brightness: {block: 15, sky: 15}}
execute unless entity @e[type=minecraft:block_display,tag=lobbyMagma3] run summon minecraft:block_display -6 29.0 10.0 {block_state: {Name: 'minecraft:magma_block'}, Tags: ["lobbyText", "lobbyMagma", "lobbyMagma3"], transformation: {translation: [0f, 0f, 0f], left_rotation: [-0.1f, 0.468f, 0.123f, 0.87f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, interpolation_duration: 20, brightness: {block: 15, sky: 15}}
