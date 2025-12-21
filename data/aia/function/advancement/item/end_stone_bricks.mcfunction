
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"End Stone Bricks", item_id:"end_stone_bricks", collection_name:"Nether and End", collection_id:"nether"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:nether/end_stone_bricks
