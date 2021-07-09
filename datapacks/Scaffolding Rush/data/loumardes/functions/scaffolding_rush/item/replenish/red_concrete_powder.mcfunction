#>1.16
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/red_concrete_powder=true}] weapon.mainhand air
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/red_concrete_powder=true}] weapon.mainhand minecraft:red_concrete_powder{HideFlags:31,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}

#1.17
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/red_concrete_powder=true}] weapon.mainhand air
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/red_concrete_powder=true}] weapon.mainhand minecraft:red_concrete_powder

advancement revoke @a only loumardes:scaffolding_rush/replenish/red_concrete_powder
