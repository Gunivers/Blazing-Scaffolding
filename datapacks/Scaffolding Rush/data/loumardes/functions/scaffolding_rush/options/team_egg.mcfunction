scoreboard players enable @a opt_team_egg
scoreboard players set @a opt_team_egg 0

execute store success score TeamEgg options if score TeamEgg options matches 0

execute if score TeamEgg options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"l'option de placement de team vient d'être "},{"text":"désactivée","color":"red"}]
execute unless score TeamEgg options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"l'option de placement de team vient d'être "},{"text":"activée","color":"green"}]

execute as @a run function loumardes:scaffolding_rush/team/base_egg/clear_egg