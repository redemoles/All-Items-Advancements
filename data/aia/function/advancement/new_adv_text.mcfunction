
#> aia:advancement/new_adv_score
#
# @within			aia:advancement/new_adv
#		
#
# @description		Executed when the player completes the advancement
#

scoreboard players operation #team aia.id.team = @s aia.id.team
$tellraw @a[predicate=aia:id_team] [{"text":""},{"selector":"@s","bold":true},{"text":" just got "},{"text":"$(item_name)","color":"#57FF3F","hover_event":{"action": "show_text","value":[{"text":"$(description)"}]}},{"text":" ("},{"text":"$(collection_name)","color":"#3FE7FF"},{"text":")"},{"text":" (","color":"#9F9F9F"},{"score":{"name":"#hour","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":":","color":"#9F9F9F"},{"text":"$(minute)","color":"#E7E7E7"},{"score":{"name":"#minute","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":":","color":"#9F9F9F"},{"text":"$(second)","color":"#E7E7E7"},{"score":{"name":"#second","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":".","color":"#9F9F9F"},{"text":"$(tick)","color":"#E7E7E7"},{"score":{"name":"#tick","objective":"aia.data.temp"},"color":"#E7E7E7"},{"text":")","color":"#9F9F9F"}]
scoreboard players set @s aia.sound.item 1

## Don de l'advancements aux alliés
$advancement grant @a[predicate=aia:id_team] only aia:$(collection_id)/$(item_id)
