
scoreboard players operation $villager.green respawn.timer = #villager.respawn.tick options

execute if score #game.running data matches 1 \
        as @a[team=green] \
    run function scaffolding_rush:villager/death/just_died/notify_death