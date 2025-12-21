
#> aia:player/color/aqua
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 04
team join aia.004 @s
scoreboard players set @s aia.aqua 0
scoreboard players enable @s aia.aqua
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
