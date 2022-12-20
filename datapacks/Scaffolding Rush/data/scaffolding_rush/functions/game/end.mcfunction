# detect if the game must end depending on selected criteria :
# 1 : last team alive
# 2 : time limit
# 3 : score goal reached

#if only one team left, and no development mode, end the game
execute unless score DevelopementMode global matches 1 if score RemainingTeam global matches ..1 run function scaffolding_rush:game/finish

#if the time limit is enabled, count down, update the bossbar and end the game at 0
execute if score UseTimeLimit options matches 1.. run scoreboard players remove TimeLeftTicks global 1
execute store result bossbar time_limit value run scoreboard players get TimeLeftTicks global
execute if score UseTimeLimit options matches 1.. if score TimeLeftTicks global matches 0 run function scaffolding_rush:game/finish

#if the score limit is enabled, end the game if a team reaches it
#UseScoreLimit
execute if score UseScoreLimit options matches 1.. if score Blue Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Green Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Red Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Yellow Score >= ScoreLimit options run function scaffolding_rush:game/finish

