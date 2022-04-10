
item replace entity @a[advancements={scaffolding_rush:replenish/yellow_concrete_powder=true}] weapon.mainhand with air
item replace entity @a[advancements={scaffolding_rush:replenish/yellow_concrete_powder=true}] weapon.mainhand with minecraft:yellow_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]} 42

advancement revoke @a only scaffolding_rush:replenish/yellow_concrete_powder
