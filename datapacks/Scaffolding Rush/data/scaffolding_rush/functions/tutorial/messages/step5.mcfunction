
item replace entity @s hotbar.1 with minecraft:cyan_concrete_powder{HideFlags:24,CanPlaceOn:["#scaffolding_rush:scaffolding"],CanDestroy:["#scaffolding_rush:scaffolding","#scaffolding_rush:sand"]} 42
tellraw @s ["",{"text":"5/5) ","color":"gold"},{"text":"Use the","color":"dark_green"},{"text":" [Sand Block on top of scaffoldings]","color":"yellow"},{"text":" to support a new scaffolding line when you either can't or don't have time to make regular supports","color":"dark_green"}]


tag @s add TutorialMessage5