
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {item_name:"Projectile Protection III", item_id:"projectile_protection_3", description:"", collection_name:"Enchantment", collection_id:"enchantments"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:enchantments/projectile_protection_3
