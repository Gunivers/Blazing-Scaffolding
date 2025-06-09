
clear @s minecraft:red_banner

item replace entity @s weapon.offhand with minecraft:light_blue_banner[banner_patterns=[{color:"white",pattern:"stripe_bottom"},{color:"light_blue",pattern:"rhombus"},{color:"white",pattern:"stripe_top"},{color:"white",pattern:"stripe_downright"},{color:"light_blue",pattern:"border"}]]
function scaffolding_rush:game/flag/give/head/5

item replace entity @s armor.head with minecraft:light_blue_banner[banner_patterns=[{color:"white",pattern:"stripe_bottom"},{color:"light_blue",pattern:"rhombus"},{color:"white",pattern:"stripe_top"},{color:"white",pattern:"stripe_downright"},{color:"light_blue",pattern:"border"}]]

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"aqua"}