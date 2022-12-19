#create the trigger objectives
#initialize the options scores
scoreboard objectives add opt_end_criteria trigger
execute unless score EndCriteria options matches 1..3 run scoreboard players set EndCriteria options 1
scoreboard objectives add opt_time_limit trigger
execute unless score TimeLimit options matches 1.. run scoreboard players set TimeLimit options 3
scoreboard objectives add opt_score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
