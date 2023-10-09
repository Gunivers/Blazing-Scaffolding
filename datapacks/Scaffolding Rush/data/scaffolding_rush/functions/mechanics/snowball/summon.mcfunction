summon arrow ~ ~ ~ {Silent:1b,damage:0.1,Tags:["snowArrow","snowArrowNew"]}
data modify entity @e[type=arrow,tag=snowArrowNew,limit=1] {} merge from entity @s

execute on origin run scoreboard players remove @s player.item.real.snowball 1
tag @e remove snowArrowNew
kill @s
