
#==============================================================================
# ENGLISH
#==============================================================================

# Green, Red and Yellow win ---------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"text":", "}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Blue, Red and Yellow win ----------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"text":", "}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Blue, Green and Yellow win --------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"text":", "}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]

# Blue, Green and Red win -----------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a title [ \
        {"translate":"blazing_scaffolding.team"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"text":", "}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.and"}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.wins"} \
    ]
