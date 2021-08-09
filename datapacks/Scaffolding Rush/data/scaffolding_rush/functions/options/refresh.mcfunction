function scaffolding_rush:options/labels

execute if score Public options matches 0 as @a[tag=admin] run function scaffolding_rush:lobby/give_book
execute if score Public options matches 1 as @a run function scaffolding_rush:lobby/give_book
