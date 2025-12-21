
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Enchanted Golden Apple", item_id:"enchanted_golden_apple", collection_name:"Food", collection_id:"foods"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:foods/enchanted_golden_apple
