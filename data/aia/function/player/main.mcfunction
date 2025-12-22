
#> aia:player/main
#
# @within			aia:timer/tick
#
#
# @description		Fonction tick pour joueurs
#

## Vision Nocturne permanent
execute if score @s aia.night_vision matches 1 run function aia:player/trigger/night_vision
execute if entity @s[tag=aia.night_vision] run effect give @s minecraft:night_vision infinite 0 true

## Divers
# Sans équipe
execute unless score #event_progress aia.data.temp matches 1.. run return run function aia:player/pre_game
execute if score #event_progress aia.data.temp matches 1.. unless score @s aia.id.team matches 1.. run return run function aia:player/pre_game
# Reconnexion d'un joueur pendant la partie → Actualisation des items obtenus par son équipe
execute if score #event_progress aia.data.temp matches 1.. if score @s aia.player.disconnect matches 1 run function aia:advancement/reconnection/main

## Son à l'item obtenu ou la collection complétée
execute if score @s aia.sound.item matches 1.. at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1 0.5
execute if score @s aia.sound.item matches 1.. run scoreboard players set @s aia.sound.item 0
execute if score @s aia.sound.collection matches 1.. at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1 0.5
execute if score @s aia.sound.collection matches 1.. run scoreboard players set @s aia.sound.collection 0
