
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Bamboo Trapdoor", item_id:"bamboo_trapdoor", collection_name:"Wood", collection_id:"woods"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:woods/bamboo_trapdoor
