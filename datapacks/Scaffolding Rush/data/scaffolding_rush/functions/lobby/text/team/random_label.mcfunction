function scaffolding_rush:team/join/killbase

setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:purple_concrete
setblock 6 23 4 minecraft:coal_block
setblock 6 23 2 minecraft:coal_block
setblock 2 23 6 minecraft:coal_block

summon minecraft:text_display 4 25 6 {text: '{"text":"Join Game","color":"dark_purple"}', Tags: ["lobbyTeam", "lobbyRandomTeam", "lobbyText", "teamRandom"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 4 24.0 6 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyRandomTeam", "lobbyInteraction", "teamRandom"]}
execute unless entity @e[type=villager,tag=teamJoinVillager,tag=teamRandom] run summon villager 4 23 6 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamRandom", "teamJoinVillagerRandom"], VillagerData: {type: "minecraft:swamp", profession: "minecraft:shepherd"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Offers: {}, Rotation: [180f, 0f]}

execute as @e[type=villager,tag=teamJoinVillagerColor] at @s run teleport @s ~ 21.9 ~
teleport @e[type=villager,tag=teamJoinVillagerRandom] 4 23 6
