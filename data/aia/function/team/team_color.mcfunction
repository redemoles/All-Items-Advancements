
#> aia:team/team_color
#
# @within			aia:team/marker
#
#
# @description		Création des markers d'équipe
#

scoreboard players operation @s aia.id.team = #team aia.id.team
tag @s add aia.marker

execute if score #team aia.id.team matches 01 run data modify entity @s data.team set value {"text":"Dark blue Team","color":"dark_blue"}
execute if score #team aia.id.team matches 02 run data modify entity @s data.team set value {"text":"Blue Team","color":"blue"}
execute if score #team aia.id.team matches 03 run data modify entity @s data.team set value {"text":"Dark aqua Team","color":"dark_aqua"}
execute if score #team aia.id.team matches 04 run data modify entity @s data.team set value {"text":"Aqua Team","color":"aqua"}
execute if score #team aia.id.team matches 05 run data modify entity @s data.team set value {"text":"Dark green Team","color":"dark_green"}
execute if score #team aia.id.team matches 06 run data modify entity @s data.team set value {"text":"Lime Team","color":"green"}
execute if score #team aia.id.team matches 07 run data modify entity @s data.team set value {"text":"Yellow Team","color":"yellow"}
execute if score #team aia.id.team matches 08 run data modify entity @s data.team set value {"text":"Gold Team","color":"gold"}
execute if score #team aia.id.team matches 09 run data modify entity @s data.team set value {"text":"Red Team","color":"red"}
execute if score #team aia.id.team matches 10 run data modify entity @s data.team set value {"text":"Dark red Team","color":"dark_red"}
execute if score #team aia.id.team matches 11 run data modify entity @s data.team set value {"text":"Dark purple Team","color":"dark_purple"}
execute if score #team aia.id.team matches 12 run data modify entity @s data.team set value {"text":"Light purple Team","color":"light_purple"}
execute if score #team aia.id.team matches 13 run data modify entity @s data.team set value {"text":"White Team","color":"white"}
execute if score #team aia.id.team matches 14 run data modify entity @s data.team set value {"text":"Gray Team","color":"gray"}
execute if score #team aia.id.team matches 15 run data modify entity @s data.team set value {"text":"Dark gray Team","color":"dark_gray"}
execute if score #team aia.id.team matches 16 run data modify entity @s data.team set value {"text":"Black Team","color":"black"}

execute if score #team aia.id.team matches 01 run data modify entity @s data.tag set value '001'
execute if score #team aia.id.team matches 02 run data modify entity @s data.tag set value '002'
execute if score #team aia.id.team matches 03 run data modify entity @s data.tag set value '003'
execute if score #team aia.id.team matches 04 run data modify entity @s data.tag set value '004'
execute if score #team aia.id.team matches 05 run data modify entity @s data.tag set value '005'
execute if score #team aia.id.team matches 06 run data modify entity @s data.tag set value '006'
execute if score #team aia.id.team matches 07 run data modify entity @s data.tag set value '007'
execute if score #team aia.id.team matches 08 run data modify entity @s data.tag set value '008'
execute if score #team aia.id.team matches 09 run data modify entity @s data.tag set value '009'
execute if score #team aia.id.team matches 10 run data modify entity @s data.tag set value '010'
execute if score #team aia.id.team matches 11 run data modify entity @s data.tag set value '011'
execute if score #team aia.id.team matches 12 run data modify entity @s data.tag set value '012'
execute if score #team aia.id.team matches 13 run data modify entity @s data.tag set value '013'
execute if score #team aia.id.team matches 14 run data modify entity @s data.tag set value '014'
execute if score #team aia.id.team matches 15 run data modify entity @s data.tag set value '015'
execute if score #team aia.id.team matches 16 run data modify entity @s data.tag set value '016'

function aia:team/team_color_1 with entity @s data
