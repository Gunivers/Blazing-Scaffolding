execute unless entity @e[type=marker,name="ScR_LavaLevel"] run summon minecraft:marker 0 1 0 {CustomName: '{"text":"ScR_LavaLevel"}'}
teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 0 270 0
function scaffolding_rush:clear/launch