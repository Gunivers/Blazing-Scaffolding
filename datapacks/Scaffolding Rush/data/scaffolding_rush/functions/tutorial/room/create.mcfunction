
#create the tutorial structure
setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"scaffolding_rush:parcours/trainingparcour",posX:-1,posY:0,posZ:-2,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:42,sizeY:19,sizeZ:5}
setblock ~ ~1 ~ redstone_block

#tp the player and set it's spawn
tp @s ~1 ~8.1 ~ -90 0
spawnpoint @s ~ ~8 ~