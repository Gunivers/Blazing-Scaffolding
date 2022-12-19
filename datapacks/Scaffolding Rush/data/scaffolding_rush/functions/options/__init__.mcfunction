scoreboard objectives add opt_time_limit trigger
execute unless score TimeLimit options matches 1.. run scoreboard players set TimeLimit options 3
scoreboard objectives add opt_score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
scoreboard objectives add opt_enderpearl trigger
execute unless score Enderpearl options matches 0..1 run scoreboard players set Enderpearl options 0
