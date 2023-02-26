team join blue @r[team=random]
team join red @r[team=random]
execute if score TeamNumber options matches 3.. run team join yellow @r[team=random]
execute if score TeamNumber options matches 4.. run team join green @r[team=random]
execute if entity @a[team=random] run function scaffolding_rush:team/random
