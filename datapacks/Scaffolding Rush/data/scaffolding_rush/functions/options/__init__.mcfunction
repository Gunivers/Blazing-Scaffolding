#create the trigger objectives


scoreboard objectives add usedTrigger dummy

#initialize the options scores
scoreboard objectives add opt_time_limit trigger
execute unless score TimeLimit options matches 1.. run scoreboard players set TimeLimit options 3
scoreboard objectives add opt_score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
scoreboard objectives add opt_use_time_limit trigger
execute unless score UseTimeLimit options matches 0..1 run scoreboard players set UseTimeLimit options 0
scoreboard objectives add opt_use_score_limit trigger
execute unless score UseScoreLimit options matches 0..1 run scoreboard players set UseScoreLimit options 0
scoreboard objectives add opt_worldborder_shrink trigger
execute unless score WorldborderShrink options matches 0..1 run scoreboard players set WorldborderShrink options 0
scoreboard objectives add opt_worldborder_start_time trigger
execute unless score WorldborderStartTime options matches 0.. run scoreboard players set WorldborderStartTime options 1
scoreboard objectives add opt_worldborder_time_to_shrink trigger
execute unless score WorldborderTimeToShrink options matches 1.. run scoreboard players set WorldborderTimeToShrink options 2
scoreboard objectives add opt_lava_speed trigger
execute unless score LavaSpeed options matches 0.. run scoreboard players set LavaSpeed options 20
scoreboard objectives add opt_movable_villager trigger
execute unless score MovableVillager options matches 0..1 run scoreboard players set MovableVillager options 1
scoreboard objectives add opt_invulnerable_villager trigger
execute unless score InvulnerableVillager options matches 0..1 run scoreboard players set InvulnerableVillager options 0
scoreboard objectives add opt_fast_climb trigger
execute unless score FastClimb options matches 0..1 run scoreboard players set FastClimb options 0
