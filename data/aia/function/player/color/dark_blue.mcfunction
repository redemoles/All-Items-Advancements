
#> aia:player/color/dark_blue
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 01
team join aia.001 @s
scoreboard players set @s aia.dark_blue 0
scoreboard players enable @s aia.dark_blue
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
