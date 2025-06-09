
clear @s minecraft:yellow_banner

item replace entity @s weapon.offhand with minecraft:yellow_banner{BlockEntityTag:{Patterns:[{Pattern:ts,Color:7},{Pattern:mr,Color:4},{Pattern:bs,Color:7},{Pattern:dls,Color:7},{Pattern:bo,Color:4}]}}
function scaffolding_rush:game/flag/give/head/2

item replace entity @s armor.head with minecraft:yellow_banner{BlockEntityTag:{Patterns:[{Pattern:ts,Color:7},{Pattern:mr,Color:4},{Pattern:bs,Color:7},{Pattern:dls,Color:7},{Pattern:bo,Color:4}]}}

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"yellow"}