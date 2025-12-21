
#> aia:player/color/dark_aqua
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 03
team join aia.003 @s
scoreboard players set @s aia.dark_aqua 0
scoreboard players enable @s aia.dark_aqua
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
