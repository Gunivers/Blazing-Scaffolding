# detect if the game must end depending on selected criterias :
# the game always stop if there is only one team remaining or none left
# if the time limit and/or the goal score is enabled, the game is stopped when either complete

#if only one team left, and no development mode, end the game
execute unless score DevelopementMode global matches 1 if score RemainingTeam global matches ..1 run function scaffolding_rush:game/finish

#if the time limit is enabled, count down, update the bossbar and end the game at 0
execute if score UseTimeLimit options matches 1.. run scoreboard players remove TimeLeftTicks timer 1
function scaffolding_rush:game/timer_bossbar
execute if score UseTimeLimit options matches 1.. if score TimeLeftTicks timer matches 0 run function scaffolding_rush:game/finish

#if the score limit is enabled, end the game if a team reaches it
#UseScoreLimit
execute if score UseScoreLimit options matches 1.. if score Blue Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Green Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Red Score >= ScoreLimit options run function scaffolding_rush:game/finish
execute if score UseScoreLimit options matches 1.. if score Yellow Score >= ScoreLimit options run function scaffolding_rush:game/finish

