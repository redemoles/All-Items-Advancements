
#> aia:player/night_vision
#
# @within			aia:player/main
#
#
# @description		Activation/désactivation de la vision nocturne
#

scoreboard players reset @s aia.night_vision
scoreboard players enable @s aia.night_vision

# Ajout du tag vision nocturne
execute if entity @s[tag=!aia.night_vision] run return run tag @s add aia.night_vision

# Retrait du tag vision nocturne
tag @s remove aia.night_vision
effect clear @s minecraft:night_vision
