execute if score Blue Score > Green Score run tag @a[team=green] add TeamEliminated
execute if score Blue Score > Red Score run tag @a[team=red] add TeamEliminated
execute if score Blue Score > Yellow Score run tag @a[team=yellow] add TeamEliminated

execute if score Green Score > Blue Score run tag @a[team=blue] add TeamEliminated
execute if score Green Score > Red Score run tag @a[team=red] add TeamEliminated
execute if score Green Score > Yellow Score run tag @a[team=yellow] add TeamEliminated

execute if score Red Score > Blue Score run tag @a[team=blue] add TeamEliminated
execute if score Red Score > Green Score run tag @a[team=gree] add TeamEliminated
execute if score Red Score > Yellow Score run tag @a[team=yellow] add TeamEliminated

execute if score Yellow Score > Blue Score run tag @a[team=blue] add TeamEliminated
execute if score Yellow Score > Green Score run tag @a[team=gree] add TeamEliminated
execute if score Yellow Score > Red Score run tag @a[team=red] add TeamEliminated
