
#> aia:start
#
# @within			
#
#
# @description		Commande manuelle
#

## Anti-restart
execute if score #event_progress aia.data.temp matches 1.. run return run tellraw @s [{"text":"Game already started."}]

## Annule la fonction si le joueur qui exécute la commande n'est pas dans une équipe
execute unless score @s aia.id.team matches 1.. run return run tellraw @s [{"text":"\nYou must be in a team to start the game","color":"red"},{"text":"\n\nTo join a team : /trigger aia.[color_name]\nTo start the game : /function aia:start (you must be operator)\nTo enable/disable perma night vision on you : /trigger night_vision","color":"#FFFFFF"}]

## Dégel des cycles
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doFireTick true
time set 0
difficulty hard
execute as @a if score @s aia.id.team matches 1.. run function aia:player/reset_effect

## Scoreboards interne
# Collections d'item
function aia:advancement/scoreboard/add

# Timer
scoreboard players set #event_progress aia.data.temp 1

# Son à l'obtention d'advancement
scoreboard objectives add aia.sound.item dummy
scoreboard objectives add aia.sound.collection dummy

# Score et rang d'équipe
scoreboard objectives add aia.score.inv dummy
scoreboard objectives add aia.score.to_display dummy
scoreboard objectives add aia.score.rank.inv dummy

scoreboard objectives add aia.data.numbers dummy
scoreboard players set #1m aia.data.numbers 1000000

## Scoreboards d'affichage
# Objectifs
scoreboard objectives add aia.stats.team.score dummy [{"text":"Team Score"}]
scoreboard objectives add aia.stats.player.score dummy [{"text":"Personal Score"}]
scoreboard objectives add aia.stats.player.death deathCount [{"text":"Deaths"}]
scoreboard objectives setdisplay sidebar aia.stats.team.score
scoreboard objectives setdisplay list aia.stats.player.score

# Équipe avec un joueur à l'intérieur
execute in aia:lobby as @e[type=minecraft:marker,tag=aia.marker,distance=0..] run function aia:team/check

# Rangs affichés
team add aia.sb.01
team add aia.sb.02
team add aia.sb.03
team add aia.sb.04
team add aia.sb.05
team add aia.sb.06
team add aia.sb.07
team add aia.sb.08
team add aia.sb.09
team add aia.sb.10
team add aia.sb.11
team add aia.sb.12
team add aia.sb.13
team add aia.sb.14
team add aia.sb.15

team join aia.sb.01 §0§0§1
team join aia.sb.02 §0§0§2
team join aia.sb.03 §0§0§3
team join aia.sb.04 §0§0§4
team join aia.sb.05 §0§0§5
team join aia.sb.06 §0§0§6
team join aia.sb.07 §0§0§7
team join aia.sb.08 §0§0§8
team join aia.sb.09 §0§0§9
team join aia.sb.10 §0§1§0
team join aia.sb.11 §0§1§1
team join aia.sb.12 §0§1§2
team join aia.sb.13 §0§1§3
team join aia.sb.14 §0§1§4
team join aia.sb.15 §0§1§5
