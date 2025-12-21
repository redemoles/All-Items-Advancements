
#> aia:timer/scoreboard/marker_score
#
# @within			aia:timer/scoreboard/marker_name
#
#
# @description		Boucle d'affichage des noms d'équipe
#

$scoreboard players operation $(sb) aia.stats.team.score = @s aia.score.to_display
