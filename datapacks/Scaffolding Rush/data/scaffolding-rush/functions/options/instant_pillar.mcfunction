
execute store success score InstantPillar options if score InstantPillar options matches 0

execute if score InstantPillar options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The instant pillar has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score InstantPillar options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The instant pillar has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_instant_pil 0
scoreboard players enable @a opt_instant_pil

function scaffolding_rush:options/refresh
