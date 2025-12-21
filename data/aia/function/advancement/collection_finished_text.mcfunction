
#> aia:advancement/collection_finished_score
#
# @within			aia:advancement/collection_finished
#		
#
# @description		Exécuté lorsqu'une collection est terminée
#

$tellraw @a [{"text":""},$(team),{"text":" just completed the collection ","color":"#FFE73F"},{"text":"$(collection_name)","color":"#3FE7FF"},{"text":" (","color":"#9F9F9F"},{"score":{"name":"#hour","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":":","color":"#9F9F9F"},{"text":"$(minute)","color":"#E7E7E7"},{"score":{"name":"#minute","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":":","color":"#9F9F9F"},{"text":"$(second)","color":"#E7E7E7"},{"score":{"name":"#second","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":".","color":"#9F9F9F"},{"text":"$(tick)","color":"#E7E7E7"},{"score":{"name":"#tick","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":")","color":"#9F9F9F"}]
scoreboard players set @a[predicate=aia:id_team] aia.sound.collection 1
