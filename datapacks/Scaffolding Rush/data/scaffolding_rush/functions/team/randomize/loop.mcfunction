team join blue @r[team=spectator]
team join red @r[team=spectator]
execute if score TeamNumber options matches 3.. run team join yellow @r[team=spectator]
execute if score TeamNumber options matches 4.. run team join green @r[team=spectator]
execute if entity @a[team=,limit=1] run function scaffolding_rush:team/randomize/loop
