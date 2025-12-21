
#> aia:player/color/dark_purple
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 11
team join aia.011 @s
scoreboard players set @s aia.dark_purple 0
scoreboard players enable @s aia.dark_purple
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
