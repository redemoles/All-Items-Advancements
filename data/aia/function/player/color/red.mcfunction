
#> aia:player/color/red
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 09
team join aia.009 @s
scoreboard players set @s aia.red 0
scoreboard players enable @s aia.red
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
