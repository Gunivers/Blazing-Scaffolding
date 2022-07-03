summon marker ~ ~ ~ {Tags:["fill"]}
tp @s ~ ~1 ~

scoreboard objectives add fill dummy
scoreboard players add @e[tag=fill] fill 0

execute if score WBSize options matches 25 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 14
execute if score WBSize options matches 35 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 19
execute if score WBSize options matches 45 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 24
execute if score WBSize options matches 55 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 29
execute if score WBSize options matches 65 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 34
execute if score WBSize options matches 75 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 39
execute if score WBSize options matches 85 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 44
execute if score WBSize options matches 95 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 49
execute if score WBSize options matches 105 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 54
execute if score WBSize options matches 115 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 59
execute if score WBSize options matches 125 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 64
execute if score WBSize options matches 135 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 69
execute if score WBSize options matches 145 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 74
execute if score WBSize options matches 155 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 79
execute if score WBSize options matches 165 run scoreboard players set @e[tag=fill,scores={fill=0}] fill 84


execute if score WBSize options matches 25 run schedule function scaffolding_rush:game/lava/global_rising/fill_13 2t
execute if score WBSize options matches 35 run schedule function scaffolding_rush:game/lava/global_rising/fill_18 2t
execute if score WBSize options matches 45 run schedule function scaffolding_rush:game/lava/global_rising/fill_23 2t
execute if score WBSize options matches 55 run schedule function scaffolding_rush:game/lava/global_rising/fill_28 2t
execute if score WBSize options matches 65 run schedule function scaffolding_rush:game/lava/global_rising/fill_33 2t
execute if score WBSize options matches 75 run schedule function scaffolding_rush:game/lava/global_rising/fill_38 2t
execute if score WBSize options matches 85 run schedule function scaffolding_rush:game/lava/global_rising/fill_43 2t
execute if score WBSize options matches 95 run schedule function scaffolding_rush:game/lava/global_rising/fill_48 2t
execute if score WBSize options matches 105 run schedule function scaffolding_rush:game/lava/global_rising/fill_53 2t
execute if score WBSize options matches 115 run schedule function scaffolding_rush:game/lava/global_rising/fill_58 2t
execute if score WBSize options matches 125 run schedule function scaffolding_rush:game/lava/global_rising/fill_63 2t
execute if score WBSize options matches 135 run schedule function scaffolding_rush:game/lava/global_rising/fill_68 2t
execute if score WBSize options matches 145 run schedule function scaffolding_rush:game/lava/global_rising/fill_73 2t
execute if score WBSize options matches 155 run schedule function scaffolding_rush:game/lava/global_rising/fill_78 2t
execute if score WBSize options matches 165 run schedule function scaffolding_rush:game/lava/global_rising/fill_83 2t