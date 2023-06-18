
kill @e[type=marker,name="ScR_LavaLevel"]
kill @e[type=marker,name="ScR_BuildLimit"]
kill @e[type=marker,name="ScR_Build"]

execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"ScR_LavaLevel"}'}
execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"ScR_Build"}'}
execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"ScR_BuildLimit"}'}
