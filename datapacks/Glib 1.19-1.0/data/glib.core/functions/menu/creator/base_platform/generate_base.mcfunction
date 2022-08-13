tag @s remove Glib_Creator_platform

execute at @s run setworldspawn ~ ~ ~

function glib.import:data
function glib.core:import/constants

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib","Glib_Generate_Base"]}
tellraw @a ["",{"text":"\n"},{"text":"<","color":"black"},{"text":"Gunivers-Lib","color":"gold"},{"text":">","color":"black"},{"text":" Generating base platform...","color":"gray"},{"text":"\n "}]

# Get extrem chunk point X
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s glib.data run data get entity @s Pos[0] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] add glib.generate.base.posNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data /= 16 glib.const
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data *= 16 glib.const
# scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=glib.generate.base.posNeg] glib.data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] remove glib.generate.base.posNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[0] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] glib.data

# Get extrem chunk point Y
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s glib.data run data get entity @s Pos[2] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] add glib.generate.base.posNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data /= 16 glib.const
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data *= 16 glib.const
# scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=glib.generate.base.posNeg] glib.data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] remove glib.generate.base.posNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[2] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] glib.data

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~ structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~-1 ~ redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~ air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~-16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~-1 ~-16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~-16 air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~ structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~-1 ~ redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~ air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~-16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~-1 ~-16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~-16 air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~-1 ~16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~ ~ ~16 air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~ structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~-1 ~ redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~ air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~-1 ~16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~16 air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~-16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~-1 ~-16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~16 ~ ~-16 air

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~16 structure_block{ignoreEntities:1b,powered:0b,posX:0,mode:"LOAD",posY:-1,sizeX:16,posZ:0,integrity:1.0f,showair:0b,name:"glib:base_plateforme_cell",id:"glib:structure_block",sizeY:1,sizeZ:16,showboundingbox:1b}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~-1 ~16 redstone_block
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run setblock ~-16 ~ ~16 air

kill @e[type=armor_stand,tag=Glib_Generate_Base]
