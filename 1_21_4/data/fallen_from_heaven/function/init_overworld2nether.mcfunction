execute store result storage fallen_from_heaven:data NetherPos.X float 0.125 run data get entity @s Pos[0]
data modify storage fallen_from_heaven:data NetherPos.Y set value 258
execute store result storage fallen_from_heaven:data NetherPos.Z float 0.125 run data get entity @s Pos[2]

# normal mode
execute if data storage fallen_from_heaven:data {config:{overworld_skyblock_mode:false}} run function fallen_from_heaven:overworld2nether with storage fallen_from_heaven:data NetherPos

# skyblock_mode is true
execute if data storage fallen_from_heaven:data {config:{overworld_skyblock_mode:true}} run tp @s ~ 258 ~

advancement revoke @s only fallen_from_heaven:overworld
