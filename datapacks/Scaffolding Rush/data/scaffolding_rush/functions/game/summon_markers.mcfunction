
kill @e[type=marker,name="lava.level"]
kill @e[type=marker,name="build.limit"]
kill @e[type=marker,name="build"]

execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"lava.level"}'}
execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"build"}'}
execute if loaded 1000 2 1000 run summon minecraft:marker 1000 2 1000 {CustomName: '{"text":"build.limit"}'}
