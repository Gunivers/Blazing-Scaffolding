team leave @s
execute store result score #team.random.red data if entity @a[team=red]
execute store result score #team.random.blue data if entity @a[team=blue]
execute store result score #team.random.yellow data if entity @a[team=yellow]
execute store result score #team.random.green data if entity @a[team=green]
execute store result score #team.random.limit data store result score #team.random.remainder data if entity @a[team=!spectator]

scoreboard players operation #team.random.remainder data %= TeamNumber options
scoreboard players operation #team.random.limit data /= TeamNumber options
execute if score #team.random.remainder data matches 1.. run scoreboard players add #team.random.limit data 1

# 4 positive leftmost bits represent teams that can be selected, we add one on each mask to count how many teams can be selected
scoreboard players set #team.random.bitmask data 0
execute if score #team.random.red data < #team.random.limit data run scoreboard players add #team.random.bitmask data 1073741825
execute if score #team.random.blue data < #team.random.limit data run scoreboard players add #team.random.bitmask data 536870913
execute if score TeamNumber options matches 3.. if score #team.random.yellow data < #team.random.limit data run scoreboard players add #team.random.bitmask data 268435457
execute if score TeamNumber options matches 4.. if score #team.random.green data < #team.random.limit data run scoreboard players add #team.random.bitmask data 134217729

# randomize a number between 0 and number of selectable teams
scoreboard players operation #team.random data = #team.random.bitmask data
scoreboard players operation #team.random data %= 8 const
execute if score #team.random data matches 2 store result score #team.random data run random value 1..2
execute if score #team.random data matches 3 store result score #team.random data run random value 1..3
execute if score #team.random data matches 4 store result score #team.random data run random value 1..4

# add 1 to random if team bitmask is 0 and random has not found a match
scoreboard players operation #team.random.bitmask data *= 2 const
execute if score #team.random data matches 1.. if score #team.random.bitmask data matches 0.. run scoreboard players add #team.random data 1
scoreboard players operation #team.random.bitmask data *= 2 const
execute if score #team.random data matches 2.. if score #team.random.bitmask data matches 0.. run scoreboard players add #team.random data 1
scoreboard players operation #team.random.bitmask data *= 2 const
execute if score #team.random data matches 3.. if score #team.random.bitmask data matches 0.. run scoreboard players add #team.random data 1

# we can now attribute the team based on the random number
execute if score #team.random data matches 1 run team join red @s
execute if score #team.random data matches 2 run team join blue @s
execute if score #team.random data matches 3 run team join yellow @s
execute if score #team.random data matches 4 run team join green @s

execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/killbase
function scaffolding_rush:lobby/refresh_items
