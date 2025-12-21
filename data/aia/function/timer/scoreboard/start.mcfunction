
#> aia:timer/scoreboard/start
#
# @within			aia:start/setup_mir
#
#
# @description		
#

scoreboard players set @s aia.score.inv 100
scoreboard players operation @s aia.score.inv -= @s aia.id.team

execute as @e[type=marker,tag=aia.marker,distance=0..] run function aia:timer/scoreboard/rank
execute as @e[type=marker,tag=aia.marker,distance=0..] run function aia:timer/scoreboard/marker_name
