
#> aia:admin/restore_player_advancement
#
# @within			
#
#
# @description		Commande manuelle - Donne au joueur tous les advancements de son équipe
#

scoreboard players operation #team aia.id.team = @s aia.id.team
tag @s add aia.temp
execute in aia:lobby as @n[type=minecraft:marker,tag=aia.marker,distance=0..,predicate=aia:id_team] run function aia:advancement/reconnection/adv_bypass_check
tag @s remove aia.temp
