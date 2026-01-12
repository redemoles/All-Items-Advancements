
#> aia:timer/tick
#
# @within			#minecraft:tick
#
#
# @description		Fonction tick
#

## Joueurs
execute as @a run function aia:player/main

execute unless score #event_progress aia.data.temp matches 1.. run return fail

## Hotbar d'équipe
execute in aia:lobby as @e[type=minecraft:marker,tag=aia.marker,distance=0..] if score @s aia.player.check matches 1 run function aia:timer/hotbar/marker

## Chronomètre
execute if score #pause aia.data.temp matches 1 run return fail
scoreboard players add #tick aia.data.temp 50
execute if score #tick aia.data.temp matches 1000.. run return run function aia:timer/second
execute if score #tick aia.data.temp matches 0050 run data modify storage aia:temp hotbar.tick set value "0"
execute if score #tick aia.data.temp matches 0100 run data modify storage aia:temp hotbar.tick set value ""
