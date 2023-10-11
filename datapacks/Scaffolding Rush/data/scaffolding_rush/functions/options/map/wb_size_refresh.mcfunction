# Change wb size by number of teams
execute if score TeamNumber options matches 2 run scoreboard players operation WBSize options = WBSize2 options
execute if score TeamNumber options matches 3 run scoreboard players operation WBSize options = WBSize3 options
execute if score TeamNumber options matches 4 run scoreboard players operation WBSize options = WBSize4 options

# normalize values
execute if score WBAddTemp options matches ..-5 run scoreboard players set WBAddTemp options -5
execute if score WBAddTemp options matches 5.. run scoreboard players set WBAddTemp options 5

# update internal values
scoreboard players operation WBAddTemp options *= 10 const
scoreboard players operation WBSize options += WBAddTemp options

# check 
execute unless score WBSize options matches 25..165 run scoreboard players set WBAddTemp options 0
execute if score WBSize options matches ..25 run worldborder set 25 1
execute if score WBSize options matches ..25 run scoreboard players set WBSize options 25
execute if score WBSize options matches 165.. run worldborder set 165 1
execute if score WBSize options matches 165.. run scoreboard players set WBSize options 165

# update world border size
execute if score WBSize options matches ..25 run worldborder set 25 1
execute if score WBSize options matches 25..29 run worldborder set 25 1
execute if score WBSize options matches 30..34 run worldborder set 30 1
execute if score WBSize options matches 35..39 run worldborder set 35 1
execute if score WBSize options matches 40..44 run worldborder set 40 1
execute if score WBSize options matches 45..49 run worldborder set 45 1
execute if score WBSize options matches 50..54 run worldborder set 50 1
execute if score WBSize options matches 55..59 run worldborder set 55 1
execute if score WBSize options matches 60..64 run worldborder set 60 1
execute if score WBSize options matches 65..69 run worldborder set 65 1
execute if score WBSize options matches 70..74 run worldborder set 70 1
execute if score WBSize options matches 75..79 run worldborder set 75 1
execute if score WBSize options matches 80..84 run worldborder set 80 1
execute if score WBSize options matches 85..89 run worldborder set 85 1
execute if score WBSize options matches 90..94 run worldborder set 90 1
execute if score WBSize options matches 95..99 run worldborder set 95 1
execute if score WBSize options matches 100..104 run worldborder set 100 1
execute if score WBSize options matches 105..109 run worldborder set 105 1
execute if score WBSize options matches 110..114 run worldborder set 110 1
execute if score WBSize options matches 115..119 run worldborder set 115 1
execute if score WBSize options matches 120..124 run worldborder set 120 1
execute if score WBSize options matches 125..129 run worldborder set 125 1
execute if score WBSize options matches 130..134 run worldborder set 130 1
execute if score WBSize options matches 135..139 run worldborder set 135 1
execute if score WBSize options matches 140..144 run worldborder set 140 1
execute if score WBSize options matches 145..149 run worldborder set 145 1
execute if score WBSize options matches 150..154 run worldborder set 150 1
execute if score WBSize options matches 155..159 run worldborder set 155 1
execute if score WBSize options matches 160..164 run worldborder set 160 1
execute if score WBSize options matches 165.. run worldborder set 165 1

# set the border limits
scoreboard players operation WBbyTwo data = WBSize options
scoreboard players operation WBbyTwo data /= 2 const
scoreboard players set -WBbyTwo data 0
scoreboard players operation -WBbyTwo data -= WBbyTwo data

# check for bases
execute as @e[tag=LobbyBase] if score @s pos.x > WBbyTwo data run function utils:clean_kill
execute as @e[tag=LobbyBase] if score @s pos.x < -WBbyTwo data run function utils:clean_kill
execute as @e[tag=LobbyBase] if score @s pos.z > WBbyTwo data run function utils:clean_kill
execute as @e[tag=LobbyBase] if score @s pos.z < -WBbyTwo data run function utils:clean_kill

# reset values
scoreboard players set WBAddTemp options 0
scoreboard players set @a option_wb_size_add 0
