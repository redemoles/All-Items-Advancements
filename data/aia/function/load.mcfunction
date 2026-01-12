
#> aia:load
#
# @within			#minecraft:load
#
#
# @description		Chargement des scoreboards
#

## Vérificateur de mise à jour
scoreboard objectives add aia.data.update dummy
scoreboard players set #loaded_update aia.data.update 26013
execute if score #team aia.id.team matches 01.. unless score #loaded_update aia.data.update = #last_update aia.data.update run function aia:update/version_list
scoreboard players operation #last_update aia.data.update = #loaded_update aia.data.update

tellraw @a [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements ","color":"#3FB7FF"},{"text":"26.1.3","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 1.21.11","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"}]

## Anti-reload
execute if score #team aia.id.team matches 01.. run return fail

## Gel des cycles
gamerule minecraft:advance_time false
gamerule minecraft:advance_weather false
gamerule minecraft:fire_spread_radius_around_player 0

## Scoreboards
# Données temporaires
scoreboard objectives add aia.data.temp dummy
scoreboard players set #hour aia.data.temp 0
scoreboard players set #minute aia.data.temp 0
scoreboard players set #second aia.data.temp 0

scoreboard objectives add aia.player.check dummy
scoreboard objectives add aia.player.disconnect minecraft.custom:leave_game
scoreboard objectives add aia.night_vision trigger

# Markers d'équipe
scoreboard objectives add aia.id.team dummy
function aia:team/setup
execute in aia:lobby run forceload add 0 0
execute in aia:lobby positioned 0 0 0 run function aia:team/marker
data modify storage aia:temp hotbar set value {tick:"000",second:"0",minute:"0"}
