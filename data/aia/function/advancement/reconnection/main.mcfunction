
#> aia:advancement/reconnection/main
#
# @within			aia:player/main
#
#
# @description		Reconnexion d'un joueur en jeu
#

scoreboard players set @s aia.player.check 1
scoreboard players set @s aia.player.disconnect 0
tellraw @s [{"text":"\nTo enable/disable perma night vision on you : /trigger night_vision","color":"#FFFFFF"}]

scoreboard players operation #team aia.id.team = @s aia.id.team
tag @s add aia.temp
execute in aia:lobby as @n[type=minecraft:marker,tag=aia.marker,distance=0..,predicate=aia:id_team] unless score @s aia.score.inv = @p[tag=aia.temp] aia.score.inv run function aia:advancement/reconnection/adv
tag @s remove aia.temp
