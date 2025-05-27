playsound minecraft:ui.button.click ambient @a[distance=..30] ~ ~ ~ 0.5 1

clear @a #scaffolding_rush:colored_items
team leave @a[team=!spectator]

function scaffolding_rush:team/randomize/loop

tellraw @a[team=blue] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.teams_randomized_your_new_teammates_are","color":"gray"},{"selector":"@a[team=blue]","color":"blue"}]

tellraw @a[team=red] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.teams_randomized_your_new_teammates_are","color":"gray"},{"selector":"@a[team=red]","color":"red"}]

tellraw @a[team=green] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.teams_randomized_your_new_teammates_are","color":"gray"},{"selector":"@a[team=green]","color":"green"}]

tellraw @a[team=yellow] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.teams_randomized_your_new_teammates_are","color":"gray"},{"selector":"@a[team=yellow]","color":"yellow"}]
