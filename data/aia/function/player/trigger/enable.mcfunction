
#> aia:player/trigger/enable
#
# @within			 aia:player/pre_game
#
#
# @description		Joueur sans équipe
#

# Ajout du trigger rejoindre une équipe
scoreboard players enable @s aia.dark_blue
scoreboard players enable @s aia.blue
scoreboard players enable @s aia.dark_aqua
scoreboard players enable @s aia.aqua
scoreboard players enable @s aia.dark_green
scoreboard players enable @s aia.green
scoreboard players enable @s aia.yellow
scoreboard players enable @s aia.gold
scoreboard players enable @s aia.red
scoreboard players enable @s aia.dark_red
scoreboard players enable @s aia.dark_purple
scoreboard players enable @s aia.light_purple
scoreboard players enable @s aia.white
scoreboard players enable @s aia.gray
scoreboard players enable @s aia.dark_gray
scoreboard players enable @s aia.black

# Ajout du trigger pour obtenir vision nocturne infini
scoreboard players enable @s aia.night_vision

function aia:player/join_game
