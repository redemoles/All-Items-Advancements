
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Ocean", item_id:"ocean", description:"", collection_name:"Ocean", collection_id:"ocean"}
execute if score #event_progress aia.data.temp matches 1 run function aia:advancement/collection_finished with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:aia/ocean
