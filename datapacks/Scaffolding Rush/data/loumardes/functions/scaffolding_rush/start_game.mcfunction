scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0

#give items
give @a[team=!] scaffolding
give @a[team=blue] blue_concrete_powder
give @a[team=green] lime_concrete_powder
give @a[team=red] red_concrete_powder
give @a[team=yellow] yellow_concrete_powder

function loumardes:scaffolding_rush/villager/give/all

function loumardes:scaffolding_rush/broadcast/start
fill -90 1 -90 90 1 90 magma_block
