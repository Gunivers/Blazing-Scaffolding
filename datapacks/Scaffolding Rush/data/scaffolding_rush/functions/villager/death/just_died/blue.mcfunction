
scoreboard players operation $villager.blue respawn.timer = #villager.respawn.tick options

execute as @a[team=blue,tag=!lobby.in_protected_area,tag=!lobby.just_exit_protected_area] run function scaffolding_rush:villager/death/just_died/notify_death
execute as @a[team=blue,tag=!lobby.in_protected_area,tag=lobby.just_exit_protected_area] run function scaffolding_rush:villager/death/just_died/place_hint