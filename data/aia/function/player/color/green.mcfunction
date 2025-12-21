
#> aia:player/color/green
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 06
team join aia.006 @s
scoreboard players set @s aia.green 0
scoreboard players enable @s aia.green
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
