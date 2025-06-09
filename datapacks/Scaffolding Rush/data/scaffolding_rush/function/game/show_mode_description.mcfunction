# Executed globally
# Called by #scaffolding_rush:game/start/pre_start

tellraw @a ["",{"text":"[BS]","color":"gold"},{"translate":"blazing_scaffolding.game_will_start","color":"gray"}]
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 1 1


title @a times 20 100 20

execute if score Preset options matches 1 run title @a title {"translate":"blazing_scaffolding.classic","bold":true,"color":"gold"}
execute if score Preset options matches 2 run title @a title {"translate":"blazing_scaffolding.rush_prenium","bold":true,"color":"#7027FF"}
execute if score Preset options matches 3 run title @a title ["",{"text":"|||","obfuscated":true,"color":"aqua"},{"text":" Chaos ","color":"aqua"},{"text":"|||","obfuscated":true,"color":"aqua"}]
execute if score Preset options matches 4 run title @a title {"translate":"blazing_scaffolding.volcano","bold":true,"color":"dark_red"}
execute if score Preset options matches 5 run title @a title {"translate":"blazing_scaffolding.get_those_flags","bold":true,"color":"green"}
execute if score Preset options matches 6 run title @a title {"translate":"blazing_scaffolding.sky_scrappers","bold":true,"color":"green"}
execute if score Preset options matches 7 run title @a title {"translate":"blazing_scaffolding.flag_mayhem","bold":true,"color":"light_purple"}
execute if score Preset options matches 8 run title @a title ["",{"text":"a?! ","obfuscated":true,"color":"#9900FF"},{"text":"WTF","color":"#9900FFaqua"},{"text":" ?:§","obfuscated":true,"color":"#9900FF"}]
execute if score Preset options matches 9 run title @a title {"text":"Volatile","bold":true,"color":"green"}

execute if score Preset options matches 1 run tellraw @a {"translate":"blazing_scaffolding.classic","bold":true,"color":"gold"}
execute if score Preset options matches 2 run tellraw @a {"translate":"blazing_scaffolding.rush_prenium","bold":true,"color":"#7027FF"}
execute if score Preset options matches 3 run tellraw @a ["",{"text":"|||","obfuscated":true,"color":"aqua"},{"text":" Chaos ","color":"aqua"},{"text":"|||","obfuscated":true,"color":"aqua"}]
execute if score Preset options matches 4 run tellraw @a {"translate":"blazing_scaffolding.volcano","bold":true,"color":"dark_red"}
execute if score Preset options matches 5 run tellraw @a {"translate":"blazing_scaffolding.get_those_flags","bold":true,"color":"green"}
execute if score Preset options matches 6 run tellraw @a {"translate":"blazing_scaffolding.sky_scrappers","bold":true,"color":"green"}
execute if score Preset options matches 7 run tellraw @a {"translate":"blazing_scaffolding.flag_mayhem","bold":true,"color":"light_purple"}
execute if score Preset options matches 8 run tellraw @a ["",{"text":"a?! ","obfuscated":true,"color":"#9900FF"},{"text":"WTF","color":"#9900FF"},{"text":" ?:§","obfuscated":true,"color":"#9900FF"}]
execute if score Preset options matches 9 run tellraw @a {"text":"Volatile","bold":true,"color":"green"}


# Score limit
execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run title @a subtitle ["",{"translate":"blazing_scaffolding.first_team_to_reach","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.points","color":"gold"}]

execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run tellraw @a ["",{"translate":"blazing_scaffolding.first_team_to_reach","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.points","color":"gold"},{"text":"\n"}]


# Time Limit
scoreboard players operation TimeLeftDisplayMinutes timer = #game.time.limit options

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run title @a subtitle ["",{"translate":"blazing_scaffolding.you_have","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"translate":"blazing_scaffolding.minutes_to_capture","color":"gold"}]

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run tellraw @a ["",{"translate":"blazing_scaffolding.you_have","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"translate":"blazing_scaffolding.minutes_to_capture","color":"gold"},{"text":"\n"}]

# Else
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run title @a subtitle {"translate":"blazing_scaffolding.kill_the_opposing_teams","color":"gold"}

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run tellraw @a [{"translate":"blazing_scaffolding.kill_the_opposing_teams","color":"gold"},{"text":"\n"}]