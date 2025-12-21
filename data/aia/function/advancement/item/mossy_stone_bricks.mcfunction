
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Mossy Stone Bricks", item_id:"mossy_stone_bricks", collection_name:"Building", collection_id:"building"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:building/mossy_stone_bricks
