
#==============================================================================
# BLUE TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------



execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":" wins!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

# French ----------------------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe ","color":"gray"}, \
        {"text":"Bleue","color":"blue"}, \
        {"text":" a gagnée !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

#==============================================================================
# GREEN TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=green,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Green","color":"green"}, \
        {"text":" wins!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

# French ----------------------------------------------------------------------

execute if entity @a[team=green,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe ","color":"gray"}, \
        {"text":"Vert","color":"green"}, \
        {"text":" a gagnée !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

#==============================================================================
# RED TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=red,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Red","color":"red"}, \
        {"text":" wins!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

# French ----------------------------------------------------------------------

execute if entity @a[team=red,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe ","color":"gray"}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagnée !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

#==============================================================================
# YELLOW TEAM WIN
#==============================================================================

# English ---------------------------------------------------------------------

execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

# French ----------------------------------------------------------------------

execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe ","color":"gray"}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagnée !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

