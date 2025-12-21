
#> aia:timer/hotbar/player
#
# @within			aia:timer/hotbar/marker
#
#
# @description		Hotbar joueur
#

$execute if score #temp aia.data.temp matches 2.. as @a[predicate=aia:id_team] run return run title @s actionbar [{"score":{"name":"#hour","objective":"aia.data.temp"},"color":"#FFFFFF","bold":true}, {"text":":","color":"#3FB7FF"}, {"text":"$(minute)","color":"#FFFFFF"}, {"score":{"name":"#minute","objective":"aia.data.temp"},"color":"#FFFFFF","bold":true}, {"text":":","color":"#3FB7FF"}, {"text":"$(second)","color":"#FFFFFF"}, {"score":{"name":"#second","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":".","color":"#3FB7FF"}, {"text":"$(tick)","color":"#FFFFFF"}, {"score":{"name":"#tick","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":" - ","color":"#3FB7FF"}, $(team), {"text":" - ","color":"#3FB7FF"}, {"score":{"name":"#temp","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":" items","color":"#3FB7FF"}]
$execute unless score #temp aia.data.temp matches 2.. as @a[predicate=aia:id_team] run title @s actionbar [{"score":{"name":"#hour","objective":"aia.data.temp"},"color":"#FFFFFF","bold":true}, {"text":":","color":"#3FB7FF"}, {"text":"$(minute)","color":"#FFFFFF"}, {"score":{"name":"#minute","objective":"aia.data.temp"},"color":"#FFFFFF","bold":true}, {"text":":","color":"#3FB7FF"}, {"text":"$(second)","color":"#FFFFFF"}, {"score":{"name":"#second","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":".","color":"#3FB7FF"}, {"text":"$(tick)","color":"#FFFFFF"}, {"score":{"name":"#tick","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":" - ","color":"#3FB7FF"}, $(team), {"text":" - ","color":"#3FB7FF"}, {"score":{"name":"#temp","objective":"aia.data.temp"},"color":"#FFFFFF"}, {"text":" item","color":"#3FB7FF"}]
