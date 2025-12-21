
#> aia:timer/hotbar/marker
#
# @within			aia:timer/tick
#
#
# @description		Préparation hotbar par équipe 
#

scoreboard players operation #team aia.id.team = @s aia.id.team
scoreboard players operation #temp aia.data.temp = @s aia.score.to_display

data modify storage aia:temp hotbar.team set from entity @s data.team
function aia:timer/hotbar/player with storage aia:temp hotbar
