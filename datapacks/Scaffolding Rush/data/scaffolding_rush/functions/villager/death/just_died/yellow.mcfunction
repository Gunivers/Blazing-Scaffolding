
scoreboard players operation $villager.yellow respawn.timer = #villager.respawn.tick options

execute if score #game.running data matches 1 \
        as @a[team=yellow] \
    run function scaffolding_rush:villager/death/just_died/notify_death

execute if score #lobby.active data matches 1 \
        as @a[team=yellow,tag=!lobby.in_protected_area,tag=lobby.just_exit_protected_area] \
    run function scaffolding_rush:villager/death/just_died/place_hint