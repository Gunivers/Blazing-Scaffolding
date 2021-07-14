
execute store success score Regen options if score Regen options matches 0

execute if score Regen options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The Regeneration has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score Regen options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The Regeneration has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Regen options matches 0 run gamerule naturalRegeneration false
execute unless score Regen options matches 0 run gamerule naturalRegeneration true

scoreboard players set @a opt_regen 0
scoreboard players enable @a opt_regen
function scaffolding_rush:options/refresh
