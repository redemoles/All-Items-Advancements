
#> aia:timer/hour
#
# @within			aia:timer/minute
#
#
# @description		Fonction heure
#

## Chronomètre
scoreboard players set #minute aia.data.temp 0
data modify storage aia:temp hotbar.minute set value "0"

scoreboard players add #hour aia.data.temp 1
