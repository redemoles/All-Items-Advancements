
#> aia:player/join_game
#
# @within			aia:timer/tick
#
#
# @description		Commandes à la connexion d'un joueur
#

scoreboard players set @s aia.player.check 1
scoreboard players set @s aia.player.disconnect 0
tellraw @s [{"text":"\nTo join a team : /trigger aia.[color_name]\nTo start the game : /function aia:start (you must be operator)\nTo enable/disable perma night vision on you : /trigger night_vision","color":"#FFFFFF"}]
