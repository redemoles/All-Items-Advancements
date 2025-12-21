
#> aia:player/pre_game
#
# @within			aia:player/main
#
#
# @description		Joueur sans équipe
#

execute unless score @s aia.player.check matches 1 run return run function aia:player/first_join_game
execute if score @s aia.player.disconnect matches 1 run return run function aia:player/join_game
function aia:player/join_team
