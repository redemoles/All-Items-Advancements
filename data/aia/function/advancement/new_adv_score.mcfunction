
#> aia:advancement/new_adv_score
#
# @within			aia:advancement/new_adv
#
#
# @description		Exécuté lorsqu'un joueur réalise un item
#

scoreboard players set #first_time aia.score.inv 0

# Si premier de l'équipe
$execute if score @s aia.data.item.$(item_id) matches 1 run return fail
scoreboard players set #first_time aia.score.inv 1
$scoreboard players set @s aia.data.item.$(item_id) 1
$scoreboard players add #$(item_id) aia.data.item 1

$scoreboard players add @s aia.data.collection.$(collection_id).count 1
$scoreboard players operation @a[predicate=aia:id_team] aia.data.collection.$(collection_id).count = @s aia.data.collection.$(collection_id).count
scoreboard players add @p[tag=aia.temp] aia.stats.player.score 1

# Score
scoreboard players add @s aia.score.to_display 1
scoreboard players operation @s aia.score.inv = @s aia.score.to_display
scoreboard players operation @s aia.score.inv *= #1m aia.data.numbers
scoreboard players add @e[type=marker,tag=aia.marker,distance=0..] aia.score.inv 1
scoreboard players operation @a[predicate=aia:id_team] aia.score.inv = @s aia.score.inv 

execute as @e[type=marker,tag=aia.marker,distance=0..] run function aia:timer/scoreboard/rank
execute as @e[type=marker,tag=aia.marker,distance=0..] if score @s aia.score.to_display matches 1.. run function aia:timer/scoreboard/marker_name
