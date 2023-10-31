
#==============================================================================
# ENGLISH
#==============================================================================

# Blue and green win ----------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Blue and red win -----------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Blue and yellow win --------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Green and red win ----------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Green and yellow win -------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Red and yellow win ---------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]