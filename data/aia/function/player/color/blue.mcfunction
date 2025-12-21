
#> aia:player/color/blue
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 02
team join aia.002 @s
scoreboard players set @s aia.blue 0
scoreboard players enable @s aia.blue
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
