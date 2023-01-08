
execute if score WorldborderTimeToShrink options matches ..1 run worldborder set 1 60
execute if score WorldborderTimeToShrink options matches 2 run worldborder set 1 120
execute if score WorldborderTimeToShrink options matches 3 run worldborder set 1 180
execute if score WorldborderTimeToShrink options matches 4..7 run worldborder set 1 300
execute if score WorldborderTimeToShrink options matches 8..12 run worldborder set 1 600
execute if score WorldborderTimeToShrink options matches 13..17 run worldborder set 1 900
execute if score WorldborderTimeToShrink options matches 18..24 run worldborder set 1 1200
execute if score WorldborderTimeToShrink options matches 25..45 run worldborder set 1 1800
execute if score WorldborderTimeToShrink options matches 45.. run worldborder set 1 3600
