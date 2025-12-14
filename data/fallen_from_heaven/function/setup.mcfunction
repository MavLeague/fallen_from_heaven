## revoke all nessessary advancements
advancement revoke @a only fallen_from_heaven:end
advancement revoke @s only fallen_from_heaven:overworld
advancement revoke @a only fallen_from_heaven:nether
# only for error prevention

## create config storage
execute unless data storage fallen_from_heaven:data config run data modify storage fallen_from_heaven:data config set value {end_keep_pos:false,end_skyblock_mode:false,overworld_skyblock_mode:false,nether_skyblock_mode:false}

# notify players that the datapack is active
tellraw @a ["\n",{text:"Fallen from Heaven is active",color:white},"\n",{text:"⛏",color:"blue",hover_event:{action:"show_text",value:{text:"show settings menu"}},click_event:{action:"run_command",command:"/function fallen_from_heaven:config/get_info"}},"  ",{text:"Version: ",color:yellow},{text:"1.21.10",color:green},{text:".3.0",color:gray},"\n"]

# migrade old config if necessary
execute if data storage fallen_from_heaven:data {config:{end_use_spawn:1b}} unless data storage fallen_from_heaven:data config.end_keep_pos run data modify storage fallen_from_heaven:data config.end_keep_pos set value false
execute if data storage fallen_from_heaven:data {config:{end_use_spawn:0b}} unless data storage fallen_from_heaven:data config.end_keep_pos run data modify storage fallen_from_heaven:data config.end_keep_pos set value true
execute if data storage fallen_from_heaven:data config.end_keep_pos run data remove storage fallen_from_heaven:data config.end_use_spawn