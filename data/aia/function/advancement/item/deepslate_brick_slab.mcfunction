
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Deepslate Brick Slab", item_id:"deepslate_brick_slab", collection_name:"Building", collection_id:"building"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:building/deepslate_brick_slab
