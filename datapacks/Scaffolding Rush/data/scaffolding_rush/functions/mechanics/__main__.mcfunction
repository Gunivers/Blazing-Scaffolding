
#  ____  _           _     _ _                               _   _                                     _                 _          
# |  _ \(_)___  __ _| |__ | (_)_ __   __ _       _ __   __ _| |_(_)_   _____       _ __ ___   ___  ___| |__   __ _ _ __ (_) ___ ___ 
# | | | | / __|/ _` | '_ \| | | '_ \ / _` |     | '_ \ / _` | __| \ \ / / _ \     | '_ ` _ \ / _ \/ __| '_ \ / _` | '_ \| |/ __/ __|
# | |_| | \__ \ (_| | |_) | | | | | | (_| |     | | | | (_| | |_| |\ V /  __/     | | | | | |  __/ (__| | | | (_| | | | | | (__\__ \
# |____/|_|___/\__,_|_.__/|_|_|_| |_|\__, |     |_| |_|\__,_|\__|_| \_/ \___|     |_| |_| |_|\___|\___|_| |_|\__,_|_| |_|_|\___|___/
#                                    |___/                                                                                                                                                                                                                                      

# Avoid hunger
effect give @a minecraft:saturation 999999 1 true

# Disable offhand
execute as @a[tag=!flag_carry,nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @a[tag=!flag_carry] weapon.offhand with air

# Disable drop
execute as @e[type=item,tag=!processed] run function scaffolding_rush:item/catch_drop

# Disable advancements
advancement revoke @a everything

#  _   _                                                    _          
# | \ | | _____      __      _ __ ___   ___  ___ __ _ _ __ (_) ___ ___ 
# |  \| |/ _ \ \ /\ / /     | '_ ` _ \ / _ \/ __/ _` | '_ \| |/ __/ __|
# | |\  |  __/\ V  V /      | | | | | |  __/ (_| (_| | | | | | (__\__ \
# |_| \_|\___| \_/\_/       |_| |_| |_|\___|\___\__,_|_| |_|_|\___|___/
#                                                 

# accelerate scaffolding climbing
execute unless score FastClimb options matches 0 run function scaffolding_rush:mechanics/fast_climb/main

# Avoid sand to physically stack (and then forbide creating sand towers)
function scaffolding_rush:mechanics/sand/__main__

# Make scaffolding pillars creating instantly (instead of having to place each block of the pillar and wait them to fall)
execute if score InstantPillar options matches 1 run function scaffolding_rush:mechanics/instant_pillar/__main__

# Snowball behavior
execute as @e[type=snowball,tag=!t] at @s run function scaffolding_rush:mechanics/snowball/summon
kill @e[type=arrow,nbt={inGround: 1b}]

# Scaffoldings blocks arrows
execute if score ScaffoldingStopsArrow options matches 1 as @e[type=arrow] at @s if block ~ ~ ~ #scaffolding_rush:scaffolding run kill @s

# Clear unconsistent villagers
execute as @e[type=villager,nbt=!{Age:0}] run function scaffolding_rush:clean_kill

# hollow base
execute as @e[type=falling_block,tag=hollow_base] run data modify entity @s Time set value 1
