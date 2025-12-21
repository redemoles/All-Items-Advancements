
#> aia:player/reset_effect
#
# @within			aia:start
#
#
# @description		Intégration dans une équipe
#

gamemode survival @s
effect clear @s minecraft:saturation
function aia:player/trigger/reset
execute if score #event_progress aia.data.temp matches 1.. run function aia:advancement/reconnection/main
