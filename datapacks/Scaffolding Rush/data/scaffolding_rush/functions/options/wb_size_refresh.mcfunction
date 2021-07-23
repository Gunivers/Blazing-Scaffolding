# normalize values
execute if score WBAddTemp options matches ..-5 run scoreboard players set WBAddTemp options -5
execute if score WBAddTemp options matches 5.. run scoreboard players set WBAddTemp options 5

# update world border size
execute if score WBAddTemp options matches -5 run worldborder add -50 1
execute if score WBAddTemp options matches -4 run worldborder add -40 1
execute if score WBAddTemp options matches -3 run worldborder add -30 1
execute if score WBAddTemp options matches -2 run worldborder add -20 1
execute if score WBAddTemp options matches -1 run worldborder add -10 1
execute if score WBAddTemp options matches 1 run worldborder add 10 1
execute if score WBAddTemp options matches 2 run worldborder add 20 1
execute if score WBAddTemp options matches 3 run worldborder add 30 1
execute if score WBAddTemp options matches 4 run worldborder add 40 1
execute if score WBAddTemp options matches 5 run worldborder add 50 1

# update internal values
scoreboard players operation WBAddTemp options *= #10 global
scoreboard players operation WBSize options += WBAddTemp options

# check 
execute if score WBSize options matches ..19 run scoreboard players set WBSize options 19
execute if score WBSize options matches ..19 run worldborder set 19
execute if score WBSize options matches 179.. run scoreboard players set WBSize options 179
execute if score WBSize options matches 179.. run worldborder set 179

#set the border limits
scoreboard players operation WBbyTwo global = WBSize options
scoreboard players operation WBbyTwo global /= #2 global
scoreboard players set -WBbyTwo global 0
scoreboard players operation -WBbyTwo global -= WBbyTwo global

# reset values
scoreboard players set @a opt_wb_size_add 0