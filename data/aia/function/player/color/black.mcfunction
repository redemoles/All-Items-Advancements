
#> aia:player/color/black
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 16
team join aia.016 @s
scoreboard players set @s aia.black 0
scoreboard players enable @s aia.black
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
