execute if score #blue.score data > #green.score data run tag @a[team=green] add TeamEliminated
execute if score #blue.score data > #red.score data run tag @a[team=red] add TeamEliminated
execute if score #blue.score data > #yellow.score data run tag @a[team=yellow] add TeamEliminated

execute if score #green.score data > #blue.score data run tag @a[team=blue] add TeamEliminated
execute if score #green.score data > #red.score data run tag @a[team=red] add TeamEliminated
execute if score #green.score data > #yellow.score data run tag @a[team=yellow] add TeamEliminated

execute if score #red.score data > #blue.score data run tag @a[team=blue] add TeamEliminated
execute if score #red.score data > #green.score data run tag @a[team=gree] add TeamEliminated
execute if score #red.score data > #yellow.score data run tag @a[team=yellow] add TeamEliminated

execute if score #yellow.score data > #blue.score data run tag @a[team=blue] add TeamEliminated
execute if score #yellow.score data > #green.score data run tag @a[team=gree] add TeamEliminated
execute if score #yellow.score data > #red.score data run tag @a[team=red] add TeamEliminated
