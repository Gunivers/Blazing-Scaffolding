
function scaffolding_rush:game/volcano/projection/motion

execute as @e[tag=Volcano] at @s run particle lava ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute as @e[tag=Volcano,scores={glib.lifetime=5..}] at @s unless block ~ ~-0.01 ~ air run tag @s add Volcano_impact
# tag @e[tag=Volcano_impact] remove Volcano
execute as @e[tag=Volcano_impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=Volcano_impact] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=Volcano_impact]