
scoreboard players operation tickAnim data = tick200 data
scoreboard players operation tickAnim data %= 20 const

execute if score tickAnim data matches 0 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"","bold":true,"color":"gold"},{"text":"Start Game","bold":true}]'
execute if score tickAnim data matches 1 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"S","bold":true,"color":"gold"},{"text":"tart Game","bold":true}]'
execute if score tickAnim data matches 2 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"St","bold":true,"color":"gold"},{"text":"art Game","bold":true}]'
execute if score tickAnim data matches 3 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Sta","bold":true,"color":"gold"},{"text":"rt Game","bold":true}]'
execute if score tickAnim data matches 4 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Star","bold":true,"color":"gold"},{"text":"t Game","bold":true}]'
execute if score tickAnim data matches 5 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start","bold":true,"color":"gold"},{"text":" Game","bold":true}]'
execute if score tickAnim data matches 6 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start G","bold":true,"color":"gold"},{"text":"ame","bold":true}]'
execute if score tickAnim data matches 7 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Ga","bold":true,"color":"gold"},{"text":"me","bold":true}]'
execute if score tickAnim data matches 8 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Gam","bold":true,"color":"gold"},{"text":"e","bold":true}]'
execute if score tickAnim data matches 9 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 10 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 11 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"","bold":true,"color":"white"},{"text":"Start Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 12 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"S","bold":true,"color":"white"},{"text":"tart Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 13 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"St","bold":true,"color":"white"},{"text":"art Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 14 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Sta","bold":true,"color":"white"},{"text":"rt Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 15 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Star","bold":true,"color":"white"},{"text":"t Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 16 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start","bold":true,"color":"white"},{"text":" Game","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 17 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start G","bold":true,"color":"white"},{"text":"ame","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 18 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Ga","bold":true,"color":"white"},{"text":"me","bold":true,"color":"gold"}]'
execute if score tickAnim data matches 19 run data modify entity @e[type=minecraft:text_display,tag=startLabel,limit=1] text set value '["",{"text":"Start Gam","bold":true,"color":"white"},{"text":"e","bold":true,"color":"gold"}]'
