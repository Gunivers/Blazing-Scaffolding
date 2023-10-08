# Reset everything in lobby

kill @e[tag=baseTeam]
execute as @e[type=villager] run function utils:clean_kill
execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
