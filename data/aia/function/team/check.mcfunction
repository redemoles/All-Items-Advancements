
#> aia:team/check
#
# @within			aia:start
#
#
# @description	    Vérifie si l'équipe possède au moins un joueur
#

scoreboard players operation #team aia.id.team = @s aia.id.team
execute if entity @p[predicate=aia:id_team] run scoreboard players set @s aia.player.check 1
