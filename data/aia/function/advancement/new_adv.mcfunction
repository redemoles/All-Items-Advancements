
#> aia:advancement/new_adv
#
# @within			function tag "aia:advancement/new_adv.json"
#
# 
# @description		Exécuté lorsqu'un joueur réalise un item
#

execute if score #pause aia.data.temp matches 1 run return run function aia:advancement/new_adv_cancel with storage aia:temp item
execute unless score @s aia.id.team matches 1.. run return run function aia:advancement/new_adv_cancel with storage aia:temp item
execute if entity @s[tag=aia.temp] run return fail

## Sélection de l'équipe du joueur
scoreboard players operation #team aia.id.team = @s aia.id.team
tag @s add aia.temp
scoreboard players set #first_time aia.score.inv 0
execute in aia:lobby as @n[type=marker,tag=aia.marker,distance=0..,predicate=aia:id_team] run function aia:advancement/new_adv_score with storage aia:temp item
tag @s remove aia.temp
execute unless score #first_time aia.score.inv matches 1 run return fail

## Messages
data modify storage aia:temp item.minute set from storage aia:temp hotbar.minute
data modify storage aia:temp item.second set from storage aia:temp hotbar.second
data modify storage aia:temp item.tick set from storage aia:temp hotbar.tick
function aia:advancement/new_adv_text with storage aia:temp item
