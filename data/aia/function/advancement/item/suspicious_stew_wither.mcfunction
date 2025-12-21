
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Suspicious Stew Wither", item_id:"suspicious_stew_wither", description:"", collection_name:"Food", collection_id:"foods"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:foods/suspicious_stew_wither
