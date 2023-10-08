

# Trigger respawn -------------------------------------------------------------

# Red
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=red,tag=TeamEliminated,limit=1] \
        unless entity @e[type=villager,tag=game_villager,tag=red_villager,limit=1] \
        unless entity @a[tag=player.item.have_egg,team=red] \
    run function scaffolding_rush:game/villager/respawn/test/red

# Blue
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=blue,tag=TeamEliminated,limit=1] \
        unless entity @e[type=villager,tag=game_villager,tag=blue_villager,limit=1] \
        unless entity @a[tag=player.item.have_egg,team=blue] \
    run function scaffolding_rush:game/villager/respawn/test/blue

# Yellow
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=yellow,tag=TeamEliminated,limit=1] \
        unless entity @e[type=villager,tag=game_villager,tag=yellow_villager,limit=1] \
        unless entity @a[tag=player.item.have_egg,team=yellow] \
    run function scaffolding_rush:game/villager/respawn/test/yellow

# Green
execute if score #villager.enabled options matches 1 \
        unless entity @a[team=green,tag=TeamEliminated,limit=1] \
        unless entity @e[type=villager,tag=game_villager,tag=green_villager,limit=1] \
        unless entity @a[tag=player.item.have_egg,team=green] \
    run function scaffolding_rush:game/villager/respawn/test/green


# Respawn timer ---------------------------------------------------------------

# Red
execute if score #villager.can_respawn options matches 1 \
        if score #villager.yellow respawn.timer matches 0.. \
    run scoreboard players remove #villager.yellow respawn.timer 1

# Blue
execute if score #villager.can_respawn options matches 1 \
        if score #villager.red respawn.timer matches 0.. \
    run scoreboard players remove #villager.red respawn.timer 1

# Yellow
execute if score #villager.can_respawn options matches 1 \
        if score #villager.green respawn.timer matches 0.. \
    run scoreboard players remove #villager.green respawn.timer 1

# Green
execute if score #villager.can_respawn options matches 1 \
        if score #villager.blue respawn.timer matches 0.. \
    run scoreboard players remove #villager.blue respawn.timer 1

# Give egg --------------------------------------------------------------------

# Red
execute if score #villager.can_respawn options matches 1 \
        if score #villager.red respawn.timer matches 0 \
        as @a[team=red,gamemode=!spectator,sort=random,limit=1] \
    run function scaffolding_rush:game/villager/egg/give/red

# Blue
execute if score #villager.can_respawn options matches 1 \
        if score #villager.blue respawn.timer matches 0 \
        as @a[team=blue,gamemode=!spectator,sort=random,limit=1] \
    run function scaffolding_rush:game/villager/egg/give/blue

# Yellow
execute if score #villager.can_respawn options matches 1 \
        if score #villager.yellow respawn.timer matches 0 \
        as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] \
    run function scaffolding_rush:game/villager/egg/give/yellow

# Green
execute if score #villager.can_respawn options matches 1 \
        if score #villager.green respawn.timer matches 0 \
        as @a[team=green,gamemode=!spectator,sort=random,limit=1] \
    run function scaffolding_rush:game/villager/egg/give/green

