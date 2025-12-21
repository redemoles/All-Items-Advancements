
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Lure III", item_id:"lure_3", description:"", collection_name:"Enchantment", collection_id:"enchantments"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:enchantments/lure_3
