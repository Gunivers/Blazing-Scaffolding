
execute store success score #gameplay.lasting_base.enabled options if score #gameplay.lasting_base.enabled options matches 0

execute if score #gameplay.lasting_base.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.lasting_bases_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.lasting_base.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.lasting_bases_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_lasting_bases 0
scoreboard players enable @s option_lasting_bases

function scaffolding_rush:options/refresh
