
#> aia:player/color/dark_green
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 05
team join aia.005 @s
scoreboard players set @s aia.dark_green 0
scoreboard players enable @s aia.dark_green
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
