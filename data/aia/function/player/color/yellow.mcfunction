
#> aia:player/color/yellow
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 07
team join aia.007 @s
scoreboard players set @s aia.yellow 0
scoreboard players enable @s aia.yellow
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
