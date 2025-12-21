
#> aia:timer/minute
#
# @within			aia:timer/second
#
#
# @description		Fonction minute
#

## Chronomètre
scoreboard players set #second aia.data.temp 0
data modify storage aia:temp hotbar.second set value "0"

scoreboard players add #minute aia.data.temp 1
execute if score #minute aia.data.temp matches 60.. run return run function aia:timer/hour
execute if score #minute aia.data.temp matches 10 run data modify storage aia:temp hotbar.minute set value ""
