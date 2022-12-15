
# animation loop
function scaffolding_rush:flag/animation/__main__

# keep the flag one
execute as @a[tag=flag_carry,tag=flagOne] unless entity @s[nbt={Inventory:[{id:"minecraft:purple_banner",Slot:-106b},{id:"minecraft:purple_banner",Slot:103b}]}] run clear @s minecraft:purple_banner

execute as @a[tag=flag_carry,tag=flagOne] if entity @s[nbt=!{Inventory:[{id:"minecraft:purple_banner",Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:purple_banner{BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:10},{Pattern:bs,Color:0},{Pattern:bo,Color:10}]}}
execute as @a[tag=flag_carry,tag=flagOne] if entity @s[nbt=!{Inventory:[{id:"minecraft:purple_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/1

# keep the flag two
execute as @a[tag=flag_carry,tag=flagOne] unless entity @s[nbt={Inventory:[{id:"minecraft:yellow_banner",Slot:-106b},{id:"minecraft:yellow_banner",Slot:103b}]}] run clear @s minecraft:yellow_banner

execute as @a[tag=flag_carry,tag=flagTwo] if entity @s[nbt=!{Inventory:[{id:"minecraft:yellow_banner",Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:yellow_banner{BlockEntityTag:{Patterns:[{Pattern:ts,Color:7},{Pattern:mr,Color:4},{Pattern:bs,Color:7},{Pattern:dls,Color:7},{Pattern:bo,Color:4}]}}
execute as @a[tag=flag_carry,tag=flagTwo] if entity @s[nbt=!{Inventory:[{id:"minecraft:yellow_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/2


# keep the flag five
execute as @a[tag=flag_carry,tag=flagOne] unless entity @s[nbt={Inventory:[{id:"minecraft:red_banner",Slot:-106b},{id:"minecraft:red_banner",Slot:103b}]}] run clear @s minecraft:red_banner

execute as @a[tag=flag_carry,tag=flagFive] if entity @s[nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:red_banner{BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:mr,Color:14},{Pattern:ts,Color:0},{Pattern:drs,Color:0},{Pattern:bo,Color:14}]}}
execute as @a[tag=flag_carry,tag=flagFive] if entity @s[nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/5

# Test flag in game
execute as @a[gamemode=!spectator] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #scaffolding_rush:flag
