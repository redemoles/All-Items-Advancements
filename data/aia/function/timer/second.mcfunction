
#> aia:timer/second
#
# @within			aia:timer/tick
#
#
# @description		Fonction seconde
#

## Chronomètre
scoreboard players set #tick aia.data.temp 0
data modify storage aia:temp hotbar.tick set value "00"

scoreboard players add #second aia.data.temp 1
execute if score #second aia.data.temp matches 60.. run return run function aia:timer/minute
execute if score #second aia.data.temp matches 10 run data modify storage aia:temp hotbar.second set value ""
