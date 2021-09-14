execute unless entity @e[type=marker,name="ScR_LavaLevel"] run summon minecraft:marker 1000 1 1000 {CustomName: '{"text":"ScR_LavaLevel"}'}
teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 270 1000
function scaffolding_rush:clear/launch