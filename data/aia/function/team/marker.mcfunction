
#> aia:team/marker
#
# @within			aia:load
#
#
# @description	    Création des markers d'équipe
#

scoreboard players add #team aia.id.team 1
execute summon minecraft:marker run function aia:team/team_color
execute unless score #team aia.id.team matches 16.. run function aia:team/marker
