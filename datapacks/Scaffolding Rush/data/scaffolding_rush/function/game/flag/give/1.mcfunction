
clear @s minecraft:purple_banner

item replace entity @s weapon.offhand with purple_banner[banner_patterns=[{color:"white",pattern:"stripe_center"},{color:"white",pattern:"square_top_left"},{color:"purple",pattern:"curly_border"},{color:"white",pattern:"stripe_bottom"},{color:"purple",pattern:"border"}]] 1

item replace entity @s armor.head with purple_banner[banner_patterns=[{color:"white",pattern:"stripe_center"},{color:"white",pattern:"square_top_left"},{color:"purple",pattern:"curly_border"},{color:"white",pattern:"stripe_bottom"},{color:"purple",pattern:"border"}]] 1

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"dark_purple"}