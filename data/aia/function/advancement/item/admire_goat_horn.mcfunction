
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Admire Goat Horn", item_id:"admire_goat_horn", description:"", collection_name:"Collectibles", collection_id:"collectionable"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:collectionable/admire_goat_horn
