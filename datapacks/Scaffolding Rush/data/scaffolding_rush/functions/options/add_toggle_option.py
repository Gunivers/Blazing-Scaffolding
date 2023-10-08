#coding:utf-8

#user iterface
print("Generating a TOGGLE option")
print("Enter option name with spaces between words")
option_name = input("option name : ")

default_val = input("default value (1 or 0) : ")

#name management
option_name = str.title(option_name)

fake_player_name = option_name
fake_player_name = fake_player_name.replace(" ", "")

option_name = option_name.replace(" ", "_")
option_name = option_name.lower()

print("fake player : "+fake_player_name)
print("option name : "+option_name)

#file generation
#   init the scores
with open("__init__.mcfunction", "a", encoding='utf-8') as f:
    f.write("scoreboard objectives add opt_"+option_name+" trigger\n")
    f.write("execute unless score "+fake_player_name+" options matches 0..1 run scoreboard players set "+fake_player_name+" options "+default_val+"\n")
f.close

#   activate all
with open("activate_all.mcfunction", "a", encoding='utf-8') as f:
    f.write("scoreboard players enable @s opt_"+option_name+"\n")
f.close

#   disable all
with open("disable_all.mcfunction", "a", encoding='utf-8') as f:
    f.write("scoreboard players reset @s opt_"+option_name+"\n")
f.close

#   main
with open("__main__.mcfunction", "a", encoding='utf-8') as f:
    f.write("execute as @a[scores={opt_"+option_name+"=1..}] run function scaffolding_rush:options/"+option_name+"\n")
f.close

#   option function
with open(option_name+".mcfunction", "w", encoding='utf-8') as f:
    text = """
#generated option function

execute store success score """+fake_player_name+""" options if score """+fake_player_name+""" options matches 0

execute if score """+fake_player_name+""" options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The """+option_name+""" option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score """+fake_player_name+""" options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The """+option_name+""" option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score """+fake_player_name+""" options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option """+option_name+""" a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score """+fake_player_name+""" options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option """+option_name+""" a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_"""+option_name+""" 0
scoreboard players enable @s opt_"""+option_name+"""

function scaffolding_rush:options/refresh
"""
    f.write(text)
f.close

