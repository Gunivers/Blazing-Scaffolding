
# 1 team left -----------------------------------------------------------------

# Count active teams
scoreboard players set RemainingTeam data 4
execute unless entity @a[team=blue,tag=!player.is_dead,tag=!TeamEliminated,limit=1] unless entity @e[tag=blue_villager,tag=game_villager,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=green,tag=!player.is_dead,tag=!TeamEliminated,limit=1] unless entity @e[tag=green_villager,tag=game_villager,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=red,tag=!player.is_dead,tag=!TeamEliminated,limit=1] unless entity @e[tag=red_villager,tag=game_villager,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=yellow,tag=!player.is_dead,tag=!TeamEliminated,limit=1] unless entity @e[tag=yellow_villager,tag=game_villager,limit=1] run scoreboard players remove RemainingTeam data 1

execute unless score DevelopementMode data matches 1 if score RemainingTeam data matches ..1 run function scaffolding_rush:game/stop/end_game

# Time's up -------------------------------------------------------------------

execute if score UseTimeLimit options matches 1.. run scoreboard players remove #game.time.left timer 1
function scaffolding_rush:game/timer_bossbar
execute if score UseTimeLimit options matches 1.. if score #game.time.left timer matches 0 run function scaffolding_rush:game/stop/end_game

# Objective reached -----------------------------------------------------------

execute if score UseScoreLimit options matches 1.. if score Blue game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Green game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Red game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Yellow game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game

