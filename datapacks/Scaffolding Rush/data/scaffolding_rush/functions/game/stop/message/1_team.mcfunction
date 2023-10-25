
#==============================================================================
# BLUE TEAM WIN
#==============================================================================



execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
    run tellraw @a [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"translate":"blazing_scaffolding.team","color":"gray"}, \
        {"translate":"color.minecraft.blue","color":"blue"}, \
        {"translate":"blazing_scaffolding.win","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]


#==============================================================================
# GREEN TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=green,tag=!TeamEliminated,limit=1] \
    run tellraw @a [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"translate":"blazing_scaffolding.team","color":"gray"}, \
        {"translate":"color.minecraft.green","color":"green"}, \
        {"translate":"blazing_scaffolding.win","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]


#==============================================================================
# RED TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=red,tag=!TeamEliminated,limit=1] \
    run tellraw @a [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"translate":"blazing_scaffolding.team","color":"gray"}, \
        {"translate":"color.minecraft.red","color":"red"}, \
        {"translate":"blazing_scaffolding.win","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]


#==============================================================================
# YELLOW TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"translate":"blazing_scaffolding.team","color":"gray"}, \
        {"translate":"color.minecraft.yellow","color":"yellow"}, \
        {"translate":"blazing_scaffolding.wins","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]
