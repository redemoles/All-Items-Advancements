
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Acacia Chest Boat", item_id:"acacia_chest_boat", collection_name:"Wood", collection_id:"woods"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:woods/acacia_chest_boat
