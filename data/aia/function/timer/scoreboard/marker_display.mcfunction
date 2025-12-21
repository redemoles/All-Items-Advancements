
#> aia:timer/scoreboard/marker_display
#
# @within			aia:timer/scoreboard/none/
#
#
# @description		Affichage de classement et score d'équipe dans le tableau des scores
#

execute if score @s aia.score.rank.inv matches 01 run data modify storage aia:temp input.sb set value "§0§0§1"
$execute if score @s aia.score.rank.inv matches 01 run return run team modify aia.sb.01 prefix [{"text":"01. ","color":"#FFE73F"},$(team)]

execute if score @s aia.score.rank.inv matches 02 run data modify storage aia:temp input.sb set value "§0§0§2"
$execute if score @s aia.score.rank.inv matches 02 run return run team modify aia.sb.02 prefix [{"text":"02. ","color":"#E7E7E7"},$(team)]

execute if score @s aia.score.rank.inv matches 03 run data modify storage aia:temp input.sb set value "§0§0§3"
$execute if score @s aia.score.rank.inv matches 03 run return run team modify aia.sb.03 prefix [{"text":"03. ","color":"#CF9F3F"},$(team)]

execute if score @s aia.score.rank.inv matches 04 run data modify storage aia:temp input.sb set value "§0§0§4"
$execute if score @s aia.score.rank.inv matches 04 run return run team modify aia.sb.04 prefix [{"text":"04. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 05 run data modify storage aia:temp input.sb set value "§0§0§5"
$execute if score @s aia.score.rank.inv matches 05 run return run team modify aia.sb.05 prefix [{"text":"05. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 06 run data modify storage aia:temp input.sb set value "§0§0§6"
$execute if score @s aia.score.rank.inv matches 06 run return run team modify aia.sb.06 prefix [{"text":"06. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 07 run data modify storage aia:temp input.sb set value "§0§0§7"
$execute if score @s aia.score.rank.inv matches 07 run return run team modify aia.sb.07 prefix [{"text":"07. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 08 run data modify storage aia:temp input.sb set value "§0§0§8"
$execute if score @s aia.score.rank.inv matches 08 run return run team modify aia.sb.08 prefix [{"text":"08. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 09 run data modify storage aia:temp input.sb set value "§0§0§9"
$execute if score @s aia.score.rank.inv matches 09 run return run team modify aia.sb.09 prefix [{"text":"09. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 10 run data modify storage aia:temp input.sb set value "§0§1§0"
$execute if score @s aia.score.rank.inv matches 10 run return run team modify aia.sb.10 prefix [{"text":"10. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 11 run data modify storage aia:temp input.sb set value "§0§1§1"
$execute if score @s aia.score.rank.inv matches 11 run return run team modify aia.sb.11 prefix [{"text":"11. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 12 run data modify storage aia:temp input.sb set value "§0§1§2"
$execute if score @s aia.score.rank.inv matches 12 run return run team modify aia.sb.12 prefix [{"text":"12. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 13 run data modify storage aia:temp input.sb set value "§0§1§3"
$execute if score @s aia.score.rank.inv matches 13 run return run team modify aia.sb.13 prefix [{"text":"13. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 14 run data modify storage aia:temp input.sb set value "§0§1§4"
$execute if score @s aia.score.rank.inv matches 14 run return run team modify aia.sb.14 prefix [{"text":"14. ","color":"#F3F3F3"},$(team)]

execute if score @s aia.score.rank.inv matches 15 run data modify storage aia:temp input.sb set value "§0§1§5"
$execute if score @s aia.score.rank.inv matches 15 run return run team modify aia.sb.15 prefix [{"text":"15. ","color":"#F3F3F3"},$(team)]
