
# Take a random music depending of if it's a normal or hardcore mode
execute if score Preset options matches 1..2 store result score #game.music.current data run random value 1..3
execute if score Preset options matches 3..4 store result score #game.music.current data run random value 4..5
execute if score Preset options matches 5..7 store result score #game.music.current data run random value 1..3

function scaffolding_rush:game/music/next