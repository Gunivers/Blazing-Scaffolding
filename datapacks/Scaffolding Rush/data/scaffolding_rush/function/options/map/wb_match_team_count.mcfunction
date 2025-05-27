# Change wb size by number of teams
execute if score TeamNumber options matches 2 run scoreboard players operation WBSize options = WBSize2 options
execute if score TeamNumber options matches 3 run scoreboard players operation WBSize options = WBSize3 options
execute if score TeamNumber options matches 4 run scoreboard players operation WBSize options = WBSize4 options

function scaffolding_rush:options/map/wb_size_refresh
