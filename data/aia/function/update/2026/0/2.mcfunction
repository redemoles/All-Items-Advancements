
#> aia:update/2026/0/2
#
# @within			aia:update/version_list
#
#
# @description		AIA 26.0.2
#

execute in aia:lobby as @e[type=minecraft:marker,tag=aia.marker,distance=0..] run function aia:team/check
execute in aia:lobby as @e[type=minecraft:marker,tag=aia.marker,distance=0..] if score @s aia.score.to_display matches 1.. run scoreboard players set @s aia.player.check 1

scoreboard players set #last_update aia.data.update 26002
