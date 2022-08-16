#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:loga
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]).
# - The output values are scaled by 10 000. The accuracy depends on the base. If the base is close to 1
# - If you input var1 = 0 the function returns log_a(0.001), if you input a negative value it returns log_a(-x)
# - If you input var2 = 0 the function returns log_0.001(x), if you input a negative value it returns log_(-a)(x)
# - The base a must be in interval [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log_8(0.5), input var1 = 500, var2 = 8000
# - if you input var2 = 1000 (corresponds to 1), the function will return non sense values because log_1(x) is not definied

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# We save the x to calculate log x later, and calculate log a
scoreboard players operation @s glib.var8 = @s glib.var0
scoreboard players operation @s glib.var0 = @s glib.var1
function glib.math:log

# We save log a on glib.var8
scoreboard players operation @s glib.var0 = @s glib.var8
scoreboard players operation @s glib.var8 = @s glib.res0

# Then we calculate log x
function glib.math:log
scoreboard players operation @s glib.res0 *= 10000 glib.const

# And divide by log a
scoreboard players operation @s glib.res0 /= @s glib.var8
