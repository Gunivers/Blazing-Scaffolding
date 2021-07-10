scoreboard players set GameEnd global 1
scoreboard players set GameRunning global 0

function loumardes:scaffolding_rush/broadcast/finish

schedule function loumardes:scaffolding_rush/reset 3s
