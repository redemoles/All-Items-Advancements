
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Sticky Piston", item_id:"sticky_piston", collection_name:"Utility and Redstone", collection_id:"redstone"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:redstone/sticky_piston
