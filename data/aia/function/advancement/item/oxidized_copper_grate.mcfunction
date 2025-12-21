
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Oxidized Copper Grate", item_id:"oxidized_copper_grate", collection_name:"Underground", collection_id:"caves"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:caves/oxidized_copper_grate
