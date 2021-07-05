effect give @a minecraft:saturation 999999 1 true

scoreboard players enable @a StartGame
scoreboard players enable @a Reset
#scoreboard players enable @a performanceMode

#options triggers
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_lava_speed
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_build_height
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_gravel
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_snowball
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_vil_respawn
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_vil_resp_cd
execute if score GameRunning constant matches 0 run scoreboard players enable @a opt_instant_pil

#flip the constant value
execute if entity @a[scores={opt_gravel=1..}] store success score UseGravel constant if score UseGravel constant matches 0
execute if entity @a[scores={opt_snowball=1..}] store success score UseSnowball constant if score UseSnowball constant matches 0
execute if entity @a[scores={opt_instant_pil=1..}] store success score InstantPillar constant if score InstantPillar constant matches 0
execute if entity @a[scores={opt_vil_respawn=1..}] store success score VillagerForgiveness constant if score VillagerForgiveness constant matches 0

scoreboard players set @a opt_gravel 0
scoreboard players set @a opt_snowball 0
scoreboard players set @a opt_instant_pil 0
scoreboard players set @a opt_vil_respawn 0

#set the selected value
execute as @a[scores={opt_vil_resp_cd=1..}] run scoreboard players operation VillagerRespawn constant = @s opt_vil_resp_cd
scoreboard players set @a opt_vil_resp_cd 0

execute as @a[scores={opt_lava_speed=1..}] run scoreboard players operation Lavaspeed constant = @s opt_vil_resp_cd
scoreboard players set @a opt_lava_speed 0

execute as @a[scores={opt_build_height=1..}] run scoreboard players operation BuildHeight constant = @s opt_build_height
scoreboard players set @a opt_build_height 0


#instant pillar
execute if score InstantPillar constant matches 1 as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] at @s run function loumardes:scaffolding_rush/pillar_start


#kill items : other than villager eggs -> unless data entity @s Item.tag.EntityTag
#kill @e[type=minecraft:item]
#execute as @a run function loumardes:scaffolding_rush/item/management

#items
execute as @e[type=item,tag=!processed] run function loumardes:scaffolding_rush/item/catch_drop


#respawn dead players
execute as @a[tag=killed] run function loumardes:scaffolding_rush/respawn
tag @a[scores={killed=1..}] add killed
scoreboard players set @a killed 0

#move villagers
execute as @a if score @s villagerClick matches 1.. at @s run function loumardes:scaffolding_rush/villager/grab/any

#place villagers
tag @a[scores={villagerPlaced=1..}] remove has_egg
scoreboard players set @a villagerPlaced 0

#toggle performance saving mode
execute if entity @a[scores={performanceMode=1}] run scoreboard players set PerformanceMode constant 0
execute if entity @a[scores={performanceMode=2}] run scoreboard players set PerformanceMode constant 1
scoreboard players set @a[scores={performanceMode=2..}] performanceMode 0


#starts the map
execute if entity @a[scores={StartGame=1..}] run function loumardes:scaffolding_rush/start_map
scoreboard players set @a StartGame 0

#reset the map
execute if entity @a[scores={Reset=1..}] run function loumardes:scaffolding_rush/reset
scoreboard players set @a Reset 0

#rise lava level
#globally
#execute if score PerformanceMode constant matches 0 if score LavaCountdown constant >= Lavaspeed constant at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava_globally
#locally

#warn villagers height
function loumardes:scaffolding_rush/warn_villager

#game logic
execute if score GameRunning constant matches 1 run function loumardes:scaffolding_rush/game_logic
