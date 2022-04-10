
item replace entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand with air
item replace entity @a[advancements={scaffolding_rush:replenish/red_concrete_powder=true}] weapon.mainhand with minecraft:red_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]} 42

advancement revoke @a only scaffolding_rush:replenish/red_concrete_powder
