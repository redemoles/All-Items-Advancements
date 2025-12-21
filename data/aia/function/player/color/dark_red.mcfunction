
#> aia:player/color/dark_red
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 10
team join aia.010 @s
scoreboard players set @s aia.dark_red 0
scoreboard players enable @s aia.dark_red
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
