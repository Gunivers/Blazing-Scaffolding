
#generated option function

execute store success score WorldborderShrink options if score WorldborderShrink options matches 0

execute if score WorldborderShrink options matches 0 as @a run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The worldborder_shrink option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score WorldborderShrink options matches 0 as @a run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The worldborder_shrink option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score WorldborderShrink options matches 0 as @a run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option worldborder_shrink a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score WorldborderShrink options matches 0 as @a run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option worldborder_shrink a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_worldborder_shrink 0
scoreboard players enable @s opt_worldborder_shrink

function scaffolding_rush:options/refresh
