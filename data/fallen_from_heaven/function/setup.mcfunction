## revoke all nessessary advancements
advancement revoke @a only fallen_from_heaven:end
advancement revoke @s only fallen_from_heaven:overworld
advancement revoke @a only fallen_from_heaven:nether
# only for error prevention

## create config storage
execute unless data storage fallen_from_heaven:data config run data modify storage fallen_from_heaven:data config set value {end_use_spawn:true,end_skyblock_mode:false,overworld_skyblock_mode:false,nether_skyblock_mode:false}

tellraw @a ["\n",{text:"Fallen from Heaven is active",color:white},"\n",{text:"⛏",color:"blue",hover_event:{action:"show_text",value:{text:"show settings menu"}},click_event:{action:"run_command",command:"/function fallen_from_heaven:config/get_info"}},"  ",{text:"Version: ",color:yellow},{text:"1.21.5",color:green},{text:".2.1",color:gray},"\n"]
