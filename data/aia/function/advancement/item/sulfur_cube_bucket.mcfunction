
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Sulfur Cube Bucket", item_id:"sulfur_cube_bucket", collection_name:"Collectible", collection_id:"collectible"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:collectible/sulfur_cube_bucket
