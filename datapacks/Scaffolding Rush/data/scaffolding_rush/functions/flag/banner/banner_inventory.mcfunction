
# keep the flag one
execute as @s[tag=flagOne] unless entity @s[nbt={Inventory:[{id:"minecraft:purple_banner",Slot:-106b},{id:"minecraft:purple_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/give/1

# keep the flag two
execute as @s[tag=flagTwo] unless entity @s[nbt={Inventory:[{id:"minecraft:yellow_banner",Slot:-106b},{id:"minecraft:yellow_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/give/2

# keep the flag five
execute as @s[tag=flagFive] unless entity @s[nbt={Inventory:[{id:"minecraft:red_banner",Slot:-106b},{id:"minecraft:red_banner",Slot:103b}]}] run function scaffolding_rush:flag/banner/give/5
