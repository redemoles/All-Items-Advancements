
#> aia:timer/scoreboard/rank
#
# @within			aia:advancement/new_adv_score
#
#
# @description		Rang d'équipe 
#

## Enregistre le score d'équipe
scoreboard players operation #temp aia.score.inv = @s aia.score.inv
scoreboard players remove #temp aia.score.inv 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add aia.count
scoreboard players set #count aia.score.rank.inv 0
execute as @e[type=minecraft:marker,tag=aia.marker,distance=0..,tag=!aia.count] if score @s aia.score.inv <= #temp aia.score.inv run scoreboard players add #count aia.score.rank.inv 1
tag @s remove aia.count

## Classement d'équipe
scoreboard players set @s aia.score.rank.inv 16
scoreboard players operation @s aia.score.rank.inv -= #count aia.score.rank.inv

scoreboard players operation #team aia.id.team = @s aia.id.team
scoreboard players operation @a[predicate=aia:id_team] aia.score.rank.inv = @s aia.score.rank.inv
