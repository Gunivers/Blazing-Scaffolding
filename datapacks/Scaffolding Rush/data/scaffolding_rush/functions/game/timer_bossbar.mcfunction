# Bossbar timer update

scoreboard players operation TimeLeftDisplayMinutes timer = TimeLeftTicks timer
scoreboard players operation TimeLeftDisplayMinutes timer /= #1200 const
scoreboard players operation TimeLeftDisplayMinutes timer -= #1 const

scoreboard players operation TimeLeftDisplaySeconds timer = TimeLeftTicks timer
scoreboard players operation TimeLeftDisplaySeconds timer /= #20 const
scoreboard players operation TimeLeftDisplaySeconds timer %= #60 const

execute store result bossbar time_limit value run scoreboard players get TimeLeftTicks timer

execute if score TimeLeftDisplayMinutes timer matches 1.. if score TimeLeftDisplaySeconds timer matches 10.. run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"blue"},{"text":":","color":"blue"},{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"blue"}]
execute if score TimeLeftDisplayMinutes timer matches 1.. if score TimeLeftDisplaySeconds timer matches ..9 run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplayMinutes","objective":"timer"},"color":"blue"},{"text":":0","color":"blue"},{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"blue"}]

execute if score TimeLeftDisplayMinutes timer matches ..0 run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"yellow"}]

execute if score TimeLeftDisplayMinutes timer matches ..0 if score TimeLeftDisplaySeconds timer matches 16..30 run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"gold"}]
execute if score TimeLeftDisplayMinutes timer matches ..0 if score TimeLeftDisplaySeconds timer matches 6..15 run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"red"}]
execute if score TimeLeftDisplayMinutes timer matches ..0 if score TimeLeftDisplaySeconds timer matches ..5 run bossbar set time_limit name ["",{"score":{"name":"TimeLeftDisplaySeconds","objective":"timer"},"color":"dark_red"}]
