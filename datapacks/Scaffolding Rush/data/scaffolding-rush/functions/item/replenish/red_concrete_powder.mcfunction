#>1.16
replaceitem entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand air
replaceitem entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand minecraft:red_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}

#1.17
#item replace entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand air
#item replace entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand minecraft:red_concrete_powder

advancement revoke @a only scaffolding_rush:replenish/red_concrete_powder
