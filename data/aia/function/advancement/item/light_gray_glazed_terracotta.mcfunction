
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Light Gray Glazed Terracotta", item_id:"light_gray_glazed_terracotta", collection_name:"Colored blocks", collection_id:"colored_blocks"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:colored_blocks/light_gray_glazed_terracotta
