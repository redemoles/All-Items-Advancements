
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"Small Amethyst Bud", item_id:"small_amethyst_bud", collection_name:"Underground", collection_id:"caves"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:caves/small_amethyst_bud
