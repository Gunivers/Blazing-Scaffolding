for x in range(0,90):
   f = open("fill_"+str(x)+".mcfunction", 'w')
   f.write(f'''
execute at @e[tag=fill,scores={{fill={x-1}}}] run fill ~-{x} ~ ~-{x} ~-{x} ~ ~{x} minecraft:magma_block
execute at @e[tag=fill,scores={{fill={x-1}}}] run fill ~-{x} ~ ~-{x} ~{x} ~ ~-{x} minecraft:magma_block
execute at @e[tag=fill,scores={{fill={x-1}}}] run fill ~{x} ~ ~{x} ~-{x} ~ ~{x} minecraft:magma_block
execute at @e[tag=fill,scores={{fill={x-1}}}] run fill ~{x} ~ ~{x} ~{x} ~ ~-{x} minecraft:magma_block
scoreboard players set @e[tag=fill,scores={{fill={x-1}}}] fill {x}
execute if score WBSize options matches {(x+1)*2}.. run schedule function scaffolding_rush:game/lava/global_rising/fill_{x+1} 2t
   ''')
   f.close()