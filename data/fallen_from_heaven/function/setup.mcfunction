## revoke all nessessary advancements
advancement revoke @a only fallen_from_heaven:end2overworld
advancement revoke @s only fallen_from_heaven:overworld2nether
# only for error prevention

## create config storage
execute unless data storage fallen_from_heaven:data config run data modify storage fallen_from_heaven:data config set value {end_use_spawn:true,end_skyblock_mode:false,overworld_skyblock_mode:false,nether_skyblock_mode:false}

tellraw @a "Fallen from Heaven is active"
