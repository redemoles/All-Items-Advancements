
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Colored blocks", item_id:"colored_blocks", description:"", collection_name:"Colored blocks", collection_id:"colored_blocks"}
execute if score #event_progress aia.data.temp matches 1 run function aia:advancement/collection_finished with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:aia/colored_blocks
