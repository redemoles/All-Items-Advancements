
#> aia:timer/scoreboard/marker_name
#
# @within			aia:timer/tick
#
#
# @description		Boucle d'affichage des noms d'équipe
#

# Marker name
data modify storage aia:temp input set value {sb:""}
function aia:timer/scoreboard/marker_display with entity @s data
function aia:timer/scoreboard/marker_score with storage aia:temp input
