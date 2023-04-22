scoreboard players add @a fireball_timer 0
scoreboard players add @a[tag=CanUseFireball,scores={fireball_timer=..299}] fireball_timer 1

execute as @a store result score @s fireball_count run clear @s egg 0


scoreboard players set @a[scores={fireball_count=0,fireball_timer=300..}] fireball_timer 0
scoreboard players set @a[scores={fireball_count=1..}] fireball_timer 300


execute as @a[scores={fireball_timer=299,fireball_count=0},tag=CanUseFireball] run loot give @s loot scaffolding_rush:item/fireball
