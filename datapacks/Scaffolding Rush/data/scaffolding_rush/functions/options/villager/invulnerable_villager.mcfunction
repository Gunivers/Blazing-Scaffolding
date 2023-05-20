
#generated option function

execute store success score InvulnerableVillager options if score InvulnerableVillager options matches 0

execute if score InvulnerableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The invulnerable_villager option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score InvulnerableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The invulnerable_villager option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score InvulnerableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option invulnerable_villager a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score InvulnerableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option invulnerable_villager a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_invulnerable_villager 0
scoreboard players enable @s opt_invulnerable_villager

function scaffolding_rush:options/refresh
