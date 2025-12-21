
#> aia:player/color/gold
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 08
team join aia.008 @s
scoreboard players set @s aia.gold 0
scoreboard players enable @s aia.gold
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
