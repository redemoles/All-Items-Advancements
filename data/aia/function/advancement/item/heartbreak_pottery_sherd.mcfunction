
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Heartbreak Pottery Sherd", item_id:"heartbreak_pottery_sherd", collection_name:"Collectible", collection_id:"collectionable"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:collectionable/heartbreak_pottery_sherd
