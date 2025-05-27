team join blue @r[team=]
team join red @r[team=]
execute if score TeamNumber options matches 3.. run team join yellow @r[team=]
execute if score TeamNumber options matches 4.. run team join green @r[team=]
execute if entity @a[team=,limit=1] run function scaffolding_rush:team/randomize/loop
