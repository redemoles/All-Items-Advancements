
#> aia:advancement/collection_finished
#
# @within			function tag "aia:advancement/new_adv.json"
# @executed			as & at the player who completed the advancement
#
# @input macro		$(title)		"Title of the advancement"
# @input macro		$(description)	"Description of the advancement"
#
# @description		Exécuté lorsqu'une collection est terminée
#

## Sélection de l'équipe du joueur
scoreboard players operation #team aia.id.team = @s aia.id.team
execute in aia:lobby as @e[type=marker,tag=aia.marker,distance=0..,predicate=aia:id_team] run function aia:advancement/collection_finished_score with storage aia:temp item
