
#> aia:update/version_list
#
# @within			aia:timer/tick
#
#
# @description		Liste des mises à jour
#

execute unless score #last_update aia.data.update matches 1.. run scoreboard players set #last_update aia.data.update 26000

execute if score #last_update aia.data.update matches 26000..26001 run function aia:update/2026/0/2
execute if score #last_update aia.data.update matches 26002..26003 run function aia:update/2026/1/0

tellraw @a [{"text":"\n[","color":"#6F6F6F"},{"text":"All Items ","color":"#F9F9F9"},{"text":"Advancements ","color":"#3FB7FF"},{"text":"26.1.0","color":"#FFE73F"},{"text":"]"},{"text":" Updated datapack!","color":"#FFFFFF"}]
