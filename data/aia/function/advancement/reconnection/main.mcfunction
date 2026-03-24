
#> aia:advancement/reconnection/main
#
# @within			aia:player/main
#
#
# @description		Reconnexion d'un joueur en jeu
#

scoreboard players set @s aia.player.check 1
scoreboard players set @s aia.player.disconnect 0
tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements","color":"#3FB7FF"},{"text":"] "},{"text":"\n/trigger aia.night_vision > ","color":"#CFCFCF"},{"text":"Enable/disable night vision for yourself and keep it after death.","color":"#FFFFFF"}]

scoreboard players operation #team aia.id.team = @s aia.id.team
tag @s add aia.temp
execute in aia:lobby as @n[type=minecraft:marker,tag=aia.marker,distance=0..,predicate=aia:id_team] unless score @s aia.score.inv = @p[tag=aia.temp] aia.score.inv run function aia:advancement/reconnection/adv_check
tag @s remove aia.temp
