
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Orange Glazed Terracotta", item_id:"orange_glazed_terracotta", collection_name:"Colored blocks", collection_id:"colored_blocks"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:colored_blocks/orange_glazed_terracotta
