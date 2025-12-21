
#> aia:player/color/white
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 13
team join aia.013 @s
scoreboard players set @s aia.white 0
scoreboard players enable @s aia.white
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
