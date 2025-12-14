# normal mode
execute if data storage fallen_from_heaven:data {config:{end_use_spawn:false,end_skyblock_mode:false}} in minecraft:overworld run tp @s ~ 258 ~

# end_use_spawn is true
execute if data storage fallen_from_heaven:data {config:{end_use_spawn:true,end_skyblock_mode:false}} run tag @s add fallen_from_heaven.from_end
execute if data storage fallen_from_heaven:data {config:{end_use_spawn:true,end_skyblock_mode:false}} run schedule function fallen_from_heaven:end2overworld 1t

# skyblock_mode is true
execute if data storage fallen_from_heaven:data {config:{end_skyblock_mode:true}} run tp @s ~ 258 ~

advancement revoke @s only fallen_from_heaven:end
