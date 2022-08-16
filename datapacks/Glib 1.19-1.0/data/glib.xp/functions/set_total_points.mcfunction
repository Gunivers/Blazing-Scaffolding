
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:set_total_points
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#set_total_points
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): points to set to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

xp set @s 0 points
xp set @s 0 levels
function glib.xp:add_points