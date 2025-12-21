
#> aia:player/color/light_purple
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 12
team join aia.012 @s
scoreboard players set @s aia.light_purple 0
scoreboard players enable @s aia.light_purple
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
