
#==============================================================================
# ENGLISH
#==============================================================================

# Green, Red and Yellow win ---------------------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Green","color":"green"}, \
        {"text":", "}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

# Blue, Red and Yellow win ----------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

# Blue, Green and Yellow win --------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]

# Blue, Green and Red win -----------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Red","color":"red"}, \
        {"text":" win!"} \
    ]

#==============================================================================
# FRENCH
#==============================================================================

# L'équipe Verte, Rouge et Jaune a gagné --------------------------------------

execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Verte","color":"green"}, \
        {"text":", "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]

# L'équipe Blue, Rouge et Jaune a gagné ---------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]

# L'équipe Blue, Verte et Jaune a gagné ---------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]

# L'équipe Blue, Verte et Rouge a gagné ---------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagné !"} \
    ]
