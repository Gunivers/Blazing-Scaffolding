
clear @s minecraft:yellow_banner

item replace entity @s weapon.offhand with minecraft:yellow_banner[banner_patterns=[{color:"gray",pattern:"stripe_top"},{color:"yellow",pattern:"rhombus"},{color:"gray",pattern:"stripe_bottom"},{color:"gray",pattern:"stripe_downleft"},{color:"yellow",pattern:"border"}]]
function scaffolding_rush:game/flag/give/head/2

item replace entity @s armor.head with minecraft:yellow_banner[banner_patterns=[{color:"gray",pattern:"stripe_top"},{color:"yellow",pattern:"rhombus"},{color:"gray",pattern:"stripe_bottom"},{color:"gray",pattern:"stripe_downleft"},{color:"yellow",pattern:"border"}]]

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"yellow"}