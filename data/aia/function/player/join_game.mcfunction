
#> aia:player/join_game
#
# @within			aia:timer/tick
#
#
# @description		Commandes à la connexion d'un joueur
#

scoreboard players set @s aia.player.check 1
scoreboard players set @s aia.player.disconnect 0
tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements","color":"#3FB7FF"},{"text":"] "},{"text":"\n/function aia:start > ","color":"#CFCFCF"},{"text":"Start the game","color":"#FFFFFF"},{"text":" (you must be operator)","color":"#CFCFCF","italic":true},{"text":"\n/function aia:pause > ","color":"#CFCFCF"},{"text":"Pause/unpause the game","color":"#FFFFFF"},{"text":" (you must be operator)","color":"#CFCFCF","italic":true},{"text":"\n/trigger aia.[color_name] > ","color":"#CFCFCF"},{"text":"Join a team","color":"#FFFFFF"},{"text":"\n/trigger aia.night_vision > ","color":"#CFCFCF"},{"text":"Enable/disable night vision for yourself and keep it after death.","color":"#FFFFFF"}]
