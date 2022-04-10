item replace entity @a[advancements={scaffolding_rush:replenish/scaffolding=true}] weapon.mainhand with air
item replace entity @a[advancements={scaffolding_rush:replenish/scaffolding=true}] weapon.mainhand with minecraft:scaffolding{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:lavareplace"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"]} 42

advancement revoke @a only scaffolding_rush:replenish/scaffolding
