
#> aia:advancement/collection_finished_score
#
# @within			aia:advancement/collection_finished
#		
#
# @description		Exécuté lorsqu'une collection est terminée
#

$execute unless score #$(collection_id) aia.data.collection matches -1.. run scoreboard objectives add aia.data.collection.$(collection_id).finished dummy

# Si premier de l'équipe
$execute if score @s aia.data.collection.$(collection_id).finished matches 1 run return fail
$scoreboard players set @s aia.data.collection.$(collection_id).finished 1
$scoreboard players add #$(collection_id) aia.data.collection 1

# Messages
data modify storage aia:temp item.team set from entity @s data.team
data modify storage aia:temp item.minute set from storage aia:temp hotbar.minute
data modify storage aia:temp item.second set from storage aia:temp hotbar.second
data modify storage aia:temp item.tick set from storage aia:temp hotbar.tick
function aia:advancement/collection_finished_text with storage aia:temp item
