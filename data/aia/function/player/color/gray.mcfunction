
#> aia:player/color/gray
#
# @within			aia:player/join_team
#
#
# @description		Intégration dans une équipe
#

scoreboard players set @s aia.id.team 14
team join aia.014 @s
scoreboard players set @s aia.gray 0
scoreboard players enable @s aia.gray
execute if score #event_progress aia.data.temp matches 1.. run function aia:player/reset_effect
