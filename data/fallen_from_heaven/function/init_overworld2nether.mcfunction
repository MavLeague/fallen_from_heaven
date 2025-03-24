execute store result storage fallen_from_heaven:data NetherPos.X float 0.125 run data get entity @s Pos[0]
data modify storage fallen_from_heaven:data NetherPos.Y set value 258
execute store result storage fallen_from_heaven:data NetherPos.Z float 0.125 run data get entity @s Pos[2]

function fallen_from_heaven:overworld2nether with storage fallen_from_heaven:data NetherPos
advancement revoke @s only fallen_from_heaven:overworld2nether