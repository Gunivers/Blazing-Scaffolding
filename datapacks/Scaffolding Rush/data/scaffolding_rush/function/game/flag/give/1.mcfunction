
clear @s minecraft:purple_banner

item replace entity @s weapon.offhand with minecraft:purple_banner{BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:10},{Pattern:bs,Color:0},{Pattern:bo,Color:10}]}}

item replace entity @s armor.head with minecraft:purple_banner{BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:10},{Pattern:bs,Color:0},{Pattern:bo,Color:10}]}}

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"dark_purple"}