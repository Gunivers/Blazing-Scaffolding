

execute as @a unless data entity @s Inventory[{id:"minecraft:scaffolding"}] run give @s scaffolding
#execute as @a[tag=has_egg,scores={villagerPlaced=0}] unless data entity @s Inventory[{id:"minecraft:villager_spawn_egg"}] run function scaffolding_rush:scaffolding_rush/villager/give/any

execute if score UseGravel options matches 1 as @a unless data entity @s Inventory[{id:"minecraft:gravel"}] run give @s gravel{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}
execute if score UseSnowball options matches 1 as @a unless data entity @s Inventory[{id:"minecraft:snowball"}] run give @s snowball
