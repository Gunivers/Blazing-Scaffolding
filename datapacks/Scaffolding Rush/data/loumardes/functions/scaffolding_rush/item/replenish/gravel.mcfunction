#>1.16
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/gravel=true}] weapon.mainhand air
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/gravel=true}] weapon.mainhand minecraft:gravel{CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}

#1.17
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/gravel=true}] weapon.mainhand air
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/gravel=true}] weapon.mainhand minecraft:gravel

advancement revoke @a only loumardes:scaffolding_rush/replenish/gravel
