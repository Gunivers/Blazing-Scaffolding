execute if score Blue game.score > Green game.score run tag @a[team=green] add TeamEliminated
execute if score Blue game.score > Red game.score run tag @a[team=red] add TeamEliminated
execute if score Blue game.score > Yellow game.score run tag @a[team=yellow] add TeamEliminated

execute if score Green game.score > Blue game.score run tag @a[team=blue] add TeamEliminated
execute if score Green game.score > Red game.score run tag @a[team=red] add TeamEliminated
execute if score Green game.score > Yellow game.score run tag @a[team=yellow] add TeamEliminated

execute if score Red game.score > Blue game.score run tag @a[team=blue] add TeamEliminated
execute if score Red game.score > Green game.score run tag @a[team=gree] add TeamEliminated
execute if score Red game.score > Yellow game.score run tag @a[team=yellow] add TeamEliminated

execute if score Yellow game.score > Blue game.score run tag @a[team=blue] add TeamEliminated
execute if score Yellow game.score > Green game.score run tag @a[team=gree] add TeamEliminated
execute if score Yellow game.score > Red game.score run tag @a[team=red] add TeamEliminated
