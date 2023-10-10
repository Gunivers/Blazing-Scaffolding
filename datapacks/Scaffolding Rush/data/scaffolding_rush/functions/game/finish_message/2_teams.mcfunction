
#==============================================================================
# ENGLISH
#==============================================================================

# Blue and green win ----------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":" and "}, \
        {"text":"Green","color":"green"}, \
        {"text":" win!"} \
    ]

# Blue and red win -----------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":" and "}, \
        {"text":"Red","color":"red"}, \
        {"text":" win!"} \
    ]

# Blue and yellow win --------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

# Green and red win ----------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Red","color":"red"}, \
        {"text":" win!"} \
    ]

# Green and yellow win -------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

# Red and yellow win ---------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

#==============================================================================
# FRANCAIS
#==============================================================================

# Bleue et Verte gagne -------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Bleue","color":"blue"}, \
        {"text":" et "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" a gagné !"} \
    ]

# Bleue et Rouge gagne -------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Bleue","color":"blue"}, \
        {"text":" et "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagné !"} \
    ]

# Bleue et Jaune gagne -------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Bleue","color":"blue"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]

# Verte et Rouge gagne -------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagné !"} \
    ]

# Verte et Jaune gagne -------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]

# Rouge et Jaune gagne -------------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]
