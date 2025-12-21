
#> aia:player/color/dark_gray
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 15
team join aia.015 @s
scoreboard players set @s aia.dark_gray 0
scoreboard players enable @s aia.dark_gray
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
