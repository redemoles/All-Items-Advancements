
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Field Masoned Banner Pattern", item_id:"field_masoned_banner_pattern", collection_name:"Collectible", collection_id:"collectionable"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:collectionable/field_masoned_banner_pattern
