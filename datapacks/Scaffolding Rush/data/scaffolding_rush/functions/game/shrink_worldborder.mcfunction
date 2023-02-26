
execute if score WorldborderTimeToShrink options matches ..1 run worldborder set 10 60
execute if score WorldborderTimeToShrink options matches 2 run worldborder set 10 120
execute if score WorldborderTimeToShrink options matches 3 run worldborder set 10 180
execute if score WorldborderTimeToShrink options matches 4..7 run worldborder set 10 300
execute if score WorldborderTimeToShrink options matches 8..12 run worldborder set 10 600
execute if score WorldborderTimeToShrink options matches 13..17 run worldborder set 10 900
execute if score WorldborderTimeToShrink options matches 18..24 run worldborder set 10 1200
execute if score WorldborderTimeToShrink options matches 25..45 run worldborder set 10 1800
execute if score WorldborderTimeToShrink options matches 45.. run worldborder set 10 3600
