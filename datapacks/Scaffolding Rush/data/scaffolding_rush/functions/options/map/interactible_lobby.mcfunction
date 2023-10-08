
execute store success score InteractibleLobby options if score InteractibleLobby options matches 0

execute if score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Interactible lobby has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute if score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=0}] {"text":"You can no longer place and break blocks in the lobby","color":"gray"}
execute unless score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Interactible lobby has been ","color":"gray"},{"text":"activated","color":"green"}]
execute unless score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"Try the scaffoldings! ","color":"gold"},{"text":" You can now place and break blocks in the lobby!","color":"gray"}]

execute if score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le lobby intéractif a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute if score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=1}] {"text":"Vous ne pouvez plus placer et casser des blocs dans le lobby","color":"gray"}
execute unless score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le lobby intéractif a été ","color":"gray"},{"text":"activé","color":"green"}]
execute unless score InteractibleLobby options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"Testez les échafaudages ! ","color":"gold"},{"text":"Vous pouvez maintenant placer et casser des blocs dans le lobby !","color":"gray"}]

scoreboard players set @s opt_interactible_lobby 0
scoreboard players enable @s opt_interactible_lobby

function scaffolding_rush:options/refresh
execute as @a at @s run function scaffolding_rush:lobby/refresh_items
