# Create scaffolding pillars instantly (instead of having to place each block of the pillar and wait them to fall)

# Only start the pillar outside the region dedicated to the tutorial
execute as @e[type=falling_block,nbt={BlockState: {Name: "minecraft:scaffolding"}}] positioned -1500 0 500 unless entity @s[dx=1000,dy=512,dz=1000] at @s run summon minecraft:marker ~ ~ ~ {CustomName: '{"text":"ScR_Pillar"}'}
execute as @e[type=marker,name="ScR_Pillar"] at @s run function scaffolding_rush:mechanics/instant_pillar/start
