#recursife function used to rise the armor stand a random amount of blocks
tp @s ~ ~1 ~

scoreboard players remove @s global 1
execute unless score @s global matches ..0 at @s run function scaffolding_rush:flag/rise