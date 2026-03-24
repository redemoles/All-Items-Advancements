
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Golden Dandelion", item_id:"golden_dandelion", collection_name:"Decoration", collection_id:"decoration"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:decoration/golden_dandelion
