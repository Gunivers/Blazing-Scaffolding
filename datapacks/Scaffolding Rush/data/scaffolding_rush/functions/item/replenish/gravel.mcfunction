
item replace entity @a[advancements={scaffolding_rush:replenish/gravel=true}] weapon.mainhand with air
item replace entity @a[advancements={scaffolding_rush:replenish/gravel=true}] weapon.mainhand with minecraft:gravel{CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}

advancement revoke @a only scaffolding_rush:replenish/gravel
