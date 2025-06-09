
execute if entity @a[team=blue,tag=!TeamEliminated] \
        unless entity @a[team=blue,tag=!player.is_dead,tag=!TeamEliminated] \
        unless entity @e[tag=blue_villager,tag=game_villager] \
    run function scaffolding_rush:game/team_elimination/blue

execute if entity @a[team=green,tag=!TeamEliminated] \
        unless entity @a[team=green,tag=!player.is_dead,tag=!TeamEliminated] \
        unless entity @e[tag=green_villager,tag=game_villager] \
    run function scaffolding_rush:game/team_elimination/green

execute if entity @a[team=red,tag=!TeamEliminated] \
        unless entity @a[team=red,tag=!player.is_dead,tag=!TeamEliminated] \
        unless entity @e[tag=red_villager,tag=game_villager] \
    run function scaffolding_rush:game/team_elimination/red

execute if entity @a[team=yellow,tag=!TeamEliminated] \
        unless entity @a[team=yellow,tag=!player.is_dead,tag=!TeamEliminated] \
        unless entity @e[tag=yellow_villager,tag=game_villager] \
    run function scaffolding_rush:game/team_elimination/yellow