execute as @a[scores={killed=1..}] run tp @s @s
execute as @a[scores={killed=1..}] run scoreboard players remove @s killed 1
execute as @a[scores={killed=1..}] run schedule function loumardes:scaffolding_rush/died/loop_tp 1t
execute as @a[scores={killed=0}] run gamemode survival @s
execute as @a[scores={killed=0}] run tag @s remove Respawning
