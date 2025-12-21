
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Splash Potion of Leaping", item_id:"splash_potion_jump_boost_thick", description:"Strong", collection_name:"Potion", collection_id:"potion"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:potion/splash_potion_jump_boost_thick
