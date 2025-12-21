
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Heart Of The Sea", item_id:"heart_of_the_sea", collection_name:"Ocean", collection_id:"ocean"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:ocean/heart_of_the_sea
