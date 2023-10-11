
clear @s minecraft:purple_banner

item replace entity @s weapon.offhand with minecraft:purple_banner{BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:10},{Pattern:bs,Color:0},{Pattern:bo,Color:10}]}}

item replace entity @s armor.head with minecraft:purple_banner{BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:10},{Pattern:bs,Color:0},{Pattern:bo,Color:10}]}}

title @s times 0 20 20
title @s title {"text":""}
execute if score @s option.language matches 0 run title @s subtitle {"text":"Bring it back to your villager!","color":"dark_purple"}
execute if score @s option.language matches 1 run title @s subtitle {"text":"Raporte le à ton villageois !","color":"dark_purple"}