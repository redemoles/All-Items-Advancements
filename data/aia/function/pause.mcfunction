
#> aia:pause
#
# @within			
#
#
# @description		Commande manuelle
#

execute unless score #event_progress aia.data.temp matches 1.. run return run tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements","color":"#3FB7FF"},{"text":"] "},{"text":"\nGame didn't start.\n","color":"#FFFFFF"}]

scoreboard players add #pause aia.data.temp 1
execute if score #pause aia.data.temp matches 2 run scoreboard players set #pause aia.data.temp 0

execute if score #pause aia.data.temp matches 0 run tellraw @a [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements","color":"#3FB7FF"},{"text":"] "},{"text":"Timer unpaused.","color":"#FFFFFF"}]
execute if score #pause aia.data.temp matches 0 in minecraft:overworld run gamerule minecraft:advance_time true
execute if score #pause aia.data.temp matches 0 in minecraft:overworld run gamerule minecraft:advance_weather true

execute if score #pause aia.data.temp matches 1 run tellraw @a [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements","color":"#3FB7FF"},{"text":"] "},{"text":"Timer paused.","color":"#FFFFFF"},{"text":"\n/function aia:pause > ","color":"#CFCFCF"},{"text":"Unpause the game","color":"#FFFFFF"}]
execute if score #pause aia.data.temp matches 1 in minecraft:overworld run gamerule minecraft:advance_time false
execute if score #pause aia.data.temp matches 1 in minecraft:overworld run gamerule minecraft:advance_weather false
