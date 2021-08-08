
item replace entity @a[advancements={scaffolding_rush:replenish/lime_concrete_powder=true}] weapon.mainhand with air
item replace entity @a[advancements={scaffolding_rush:replenish/lime_concrete_powder=true}] weapon.mainhand with minecraft:lime_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}

advancement revoke @a only scaffolding_rush:replenish/lime_concrete_powder
