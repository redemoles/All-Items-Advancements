
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Tall Dry Grass", item_id:"tall_dry_grass", collection_name:"Decoration", collection_id:"decoration"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:decoration/tall_dry_grass
