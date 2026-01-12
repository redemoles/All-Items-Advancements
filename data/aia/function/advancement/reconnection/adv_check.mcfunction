
#> aia:advancement/reconnection/adv_check
#
# @within			aia:advancement/reconnection/main
#
#
# @description		Liste des collections à actualiser
#

execute unless score @s aia.data.collection.woods.count = @p[tag=aia.temp] aia.data.collection.woods.count run function aia:advancement/reconnection/collection/woods
execute unless score @s aia.data.collection.tools.count = @p[tag=aia.temp] aia.data.collection.tools.count run function aia:advancement/reconnection/collection/tools
execute unless score @s aia.data.collection.foods.count = @p[tag=aia.temp] aia.data.collection.foods.count run function aia:advancement/reconnection/collection/foods
execute unless score @s aia.data.collection.redstone.count = @p[tag=aia.temp] aia.data.collection.redstone.count run function aia:advancement/reconnection/collection/redstone
execute unless score @s aia.data.collection.decoration.count = @p[tag=aia.temp] aia.data.collection.decoration.count run function aia:advancement/reconnection/collection/decoration
execute unless score @s aia.data.collection.colored_blocks.count = @p[tag=aia.temp] aia.data.collection.colored_blocks.count run function aia:advancement/reconnection/collection/colored_blocks
execute unless score @s aia.data.collection.ocean.count = @p[tag=aia.temp] aia.data.collection.ocean.count run function aia:advancement/reconnection/collection/ocean
execute unless score @s aia.data.collection.building.count = @p[tag=aia.temp] aia.data.collection.building.count run function aia:advancement/reconnection/collection/building
execute unless score @s aia.data.collection.caves.count = @p[tag=aia.temp] aia.data.collection.caves.count run function aia:advancement/reconnection/collection/caves
execute unless score @s aia.data.collection.nether.count = @p[tag=aia.temp] aia.data.collection.nether.count run function aia:advancement/reconnection/collection/nether
execute unless score @s aia.data.collection.enchantments.count = @p[tag=aia.temp] aia.data.collection.enchantments.count run function aia:advancement/reconnection/collection/enchantments
execute unless score @s aia.data.collection.potion.count = @p[tag=aia.temp] aia.data.collection.potion.count run function aia:advancement/reconnection/collection/potion
execute unless score @s aia.data.collection.collectionable.count = @p[tag=aia.temp] aia.data.collection.collectionable.count run function aia:advancement/reconnection/collection/collectionable
scoreboard players operation @p[tag=aia.temp] aia.score.inv = @s aia.score.inv
