
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Lingering Potion of the Turtle Master", item_id:"lingering_potion_turtle_master_thick", description:"Strong", collection_name:"Potion", collection_id:"potion"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:potion/lingering_potion_turtle_master_thick
