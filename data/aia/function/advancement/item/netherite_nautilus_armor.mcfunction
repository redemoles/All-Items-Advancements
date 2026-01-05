
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Netherite Nautilus Armor", item_id:"netherite_nautilus_armor", collection_name:"Tools and Combat", collection_id:"tools"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:tools/netherite_nautilus_armor
