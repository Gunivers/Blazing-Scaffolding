scoreboard players set #game.running data 0
scoreboard players set #game.end data 1
kill @e[tag=Volcano]

function scaffolding_rush:game/music/__stop__

# Get best score --------------------------------------------------------------

scoreboard players operation #best_score data = Blue game.score
scoreboard players operation #best_score data > Green game.score
scoreboard players operation #best_score data > Red game.score
scoreboard players operation #best_score data > Yellow game.score

# Eliminate teams that doesn't have the best score
execute if score Blue game.score < #best_score data run tag @a[team=blue] add TeamEliminated
execute if score Green game.score < #best_score data run tag @a[team=green] add TeamEliminated
execute if score Red game.score < #best_score data run tag @a[team=red] add TeamEliminated
execute if score Yellow game.score < #best_score data run tag @a[team=yellow] add TeamEliminated

# Finish message --------------------------------------------------------------

scoreboard players set TeamWin data 0
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1

title @a times 0 60 20
title @a subtitle {"text":""}

execute if score TeamWin data matches 1 run function scaffolding_rush:game/stop/message/1_team
execute if score TeamWin data matches 2 run function scaffolding_rush:game/stop/message/2_teams
execute if score TeamWin data matches 3 run function scaffolding_rush:game/stop/message/3_teams
execute if score TeamWin data matches 4 run function scaffolding_rush:game/stop/message/4_teams

#win streak
scoreboard players set @a[team=!spectator,tag=TeamEliminated] player.win_streak 0
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=blue] player.win_streak 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=green] player.win_streak 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=red] player.win_streak 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=yellow] player.win_streak 1

advancement grant @a[scores={player.win_streak=1}] only scaffolding_rush:rewards/win_streak/first
advancement grant @a[scores={player.win_streak=3}] only scaffolding_rush:rewards/win_streak/3
advancement grant @a[scores={player.win_streak=5}] only scaffolding_rush:rewards/win_streak/5
advancement grant @a[scores={player.win_streak=10}] only scaffolding_rush:rewards/win_streak/10
advancement grant @a[scores={player.win_streak=20}] only scaffolding_rush:rewards/win_streak/20

execute as @a[team=!spectator,tag=!TeamEliminated] \
    run function scaffolding_rush:player/animated_title/start {type:"victory"}
execute as @a[team=!spectator,tag=TeamEliminated] \
    run function scaffolding_rush:player/animated_title/start {type:"defeat"}

execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run title @a title ["",{"translate":"blazing_scaffolding.no_team_won"}]
execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run tellraw @a [ \
        {"text":"====================================\n\n","color":"dark_gray"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"translate":"blazing_scaffolding.no_team_won","color":"gray"}, \
        {"text":"\n\n====================================","color":"dark_gray"} \
    ]


#--------------------------------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=blue] Win 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=green] Win 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=red] Win 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=yellow] Win 1

execute at @e[type=marker,name="build.limit"] run teleport @e[type=marker,name="lava.level",limit=1] 1000 ~10 1000

tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg

schedule function scaffolding_rush:game/stop/stop 100t

bossbar set minecraft:filling_lava visible false
bossbar set minecraft:time_limit visible false

function scaffolding_rush:game/lava/global_rising/stop
