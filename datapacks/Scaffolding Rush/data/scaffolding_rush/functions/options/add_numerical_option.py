#coding:utf-8

#user iterface
print("Generating a NUMERICAL option")
print("Enter option name with spaces between words")
option_name = input("option name : ")

min_val = input("minimal value (leave empty if none) : ")
default_val = input("default value : ")
max_val = input("maximal value (leave empty if none) : ")

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
    f.write("execute unless score "+fake_player_name+" options matches "+min_val+".."+max_val+" run scoreboard players set "+fake_player_name+" options "+default_val+"\n")
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
    f.write("execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_"+option_name+"\n")
    f.write("execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/"+option_name+"\n")

f.close

#   option function
with open(option_name+".mcfunction", "w", encoding='utf-8') as f:
    text = """
#generated option function

execute if score @s opt_"""+option_name+""" matches """+min_val+""".."""+max_val+""" run scoreboard players operation """+fake_player_name+""" options = @s opt_"""+option_name+"""

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The """+option_name+""" option has been set to ","color":"gray"},{"score":{"name":\""""+fake_player_name+"""","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option """+option_name+""" a été mise à ","color":"gray"},{"score":{"name":\""""+fake_player_name+"""","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_"""+option_name+""" 0
scoreboard players enable @s opt_"""+option_name+"""

function scaffolding_rush:options/refresh
"""
    f.write(text)
f.close

