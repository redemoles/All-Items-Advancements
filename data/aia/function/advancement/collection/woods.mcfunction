
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Wood", item_id:"woods", description:"", collection_name:"Wood", collection_id:"woods"}
execute if score #event_progress aia.data.temp matches 1 run function aia:advancement/collection_finished with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:aia/woods
