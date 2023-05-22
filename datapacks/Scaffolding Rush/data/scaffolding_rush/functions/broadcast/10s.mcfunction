execute as @a run tellraw @s[scores={language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" A game will start in 10 seconds!\n","color":"gray"}]
execute as @a run tellraw @s[scores={language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" Une partie va commencer dans 10 secondes !\n","color":"gray"}]
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 1 1


title @a times 20 100 20

execute if score Preset options matches 1 run title @a title {"text":"Classic","bold":true,"color":"gold"}
execute if score Preset options matches 2 run title @a title {"text":"Rush Premium","bold":true,"color":"#7027FF"}
execute if score Preset options matches 3 run title @a title ["",{"text":"|||","obfuscated":true,"color":"#9900FF"},{"text":" Chaos ","color":"#9900FF"},{"text":"|||","obfuscated":true,"color":"#9900FF"}]
execute if score Preset options matches 4 run title @a title {"text":"Get Those Flags","bold":true,"color":"green"}
execute if score Preset options matches 5 run title @a title {"text":"Get Those F Flags","bold":true,"color":"light_purple"}
execute if score Preset options matches 6 run title @a title {"text":"Volcano","bold":true,"color":"dark_red"}
execute if score Preset options matches 7 run title @a title ["",{"text":"a?! ","obfuscated":true,"color":"aqua"},{"text":"WTF","color":"aqua"},{"text":" ?:§","obfuscated":true,"color":"aqua"}]
execute if score Preset options matches 8 run title @a title {"text":"Volatile","bold":true,"color":"green"}
execute if score Preset options matches 9 run title @a title {"text":"Bridge Chaos","bold":true,"color":"green"}

execute if score Preset options matches 1 run tellraw @a {"text":"Classic","bold":true,"color":"gold"}
execute if score Preset options matches 2 run tellraw @a {"text":"Rush Premium","bold":true,"color":"#7027FF"}
execute if score Preset options matches 3 run tellraw @a ["",{"text":"|||","obfuscated":true,"color":"#9900FF"},{"text":" Chaos ","color":"#9900FF"},{"text":"|||","obfuscated":true,"color":"#9900FF"}]
execute if score Preset options matches 4 run tellraw @a {"text":"Get Those Flags","bold":true,"color":"green"}
execute if score Preset options matches 5 run tellraw @a {"text":"Get Those F Flags","bold":true,"color":"light_purple"}
execute if score Preset options matches 6 run tellraw @a {"text":"Volcano","bold":true,"color":"dark_red"}
execute if score Preset options matches 7 run tellraw @a ["",{"text":"a?! ","obfuscated":true,"color":"aqua"},{"text":"WTF","color":"aqua"},{"text":" ?:§","obfuscated":true,"color":"aqua"}]
execute if score Preset options matches 8 run tellraw @a {"text":"Volatile","bold":true,"color":"green"}
execute if score Preset options matches 9 run tellraw @a {"text":"Bridge Chaos","bold":true,"color":"green"}


# Score limit
execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run title @a[scores={language=0}] subtitle ["",{"text":"First team to reach ","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":" points!","color":"gold"}]
execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run title @a[scores={language=1}] subtitle ["",{"text":"Première équipe à atteindre ","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":" points !","color":"gold"}]

execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"First team to reach ","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":" points!\n","color":"gold"}]
execute if score UseScoreLimit options matches 1 if score UseTimeLimit options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"Première équipe à atteindre ","color":"gold"},{"score":{"name":"ScoreLimit","objective":"options"},"color":"gold"},{"text":" points !\n","color":"gold"}]


# Time Limit
scoreboard players operation TimeLeftDisplayMinutes timer = TimeLimit options

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run title @a[scores={language=0}] subtitle ["",{"text":"You have ","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"text":" minutes to capture the most points!","color":"gold"}]
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run title @a[scores={language=1}] subtitle ["",{"text":"Vous avez ","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"text":" minutes pour capturer le plus de points !","color":"gold"}]

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run tellraw @a[scores={language=0}] ["",{"text":"You have ","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"text":" minutes to capture the most points!\n","color":"gold"}]
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 1 if score TimeLeftDisplayMinutes timer matches 1.. run tellraw @a[scores={language=1}] ["",{"text":"Vous avez ","color":"gold"},{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"gold"},{"text":" minutes pour capturer le plus de points !\n","color":"gold"}]

# Else
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run title @a[scores={language=0}] subtitle {"text":"Kill the opposing teams!","color":"gold"}
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run title @a[scores={language=1}] subtitle {"text":"Tuez les équipes énemies !","color":"gold"}

execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run tellraw @a[scores={language=0}] {"text":"Kill the opposing teams!\n","color":"gold"}
execute if score UseScoreLimit options matches 0 if score UseTimeLimit options matches 0 run tellraw @a[scores={language=1}] {"text":"Tuez les équipes énemies !\n","color":"gold"}