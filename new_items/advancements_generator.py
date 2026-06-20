
## Python program that generates multiple random advancements and put them in the "generated_advancements" folder
import os
from urllib.request import urlopen

# Stop program if not executed from the root folder
if not os.path.exists("advancements_generator.py"):
	print("Please execute this program from its folder.")
	exit()

# Configuration
template_advancement = """{
	"display": {
		"icon": {
			"id": "___ITEM_ID___"
		},
		"title": {
			"text": "___ITEM_NAME___",
			"color": "#FFFFFF"
		},
		"description": {
			"text": "",
			"color": "#FFFFFF"
		},
		"frame": "task",
		"show_toast": false,
		"announce_to_chat": false,
		"hidden": false
	},
	"criteria": {
		"requirement": {
			"trigger": "minecraft:inventory_changed",
			"conditions": {
				"items": [
					{
						"items": [
							"___ITEM_ID___"
						],
						"count": {
							"min": 1
						}
					}
				]
			}
		}
	},
	"parent": "aia:xxx/xxx",
	"rewards": {
		"function": "aia:advancement/item/___ITEM_FUNCTION___"
	}
}
"""
template_function = """
execute if score #event_progress aia.data.temp matches 1 run data modify storage aia:temp item set value {description:"", item_name:"___ITEM_NAME___", item_id:"___ITEM_ID___", collection_name:"XXX", collection_id:"xxx"}
execute if score #event_progress aia.data.temp matches 1 run function #aia:advancement with storage aia:temp item
execute unless score #event_progress aia.data.temp matches 1 run advancement revoke @s only aia:xxx/___ITEM_ID___
"""

# Download a list of items
link = "https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/26/releases-candidate/26.2/custom-generated/registries/item.txt"
with urlopen(link) as response:
	blocks = [line.decode("utf-8").strip() for line in response if line.strip()]

# Keep only the items we want to generate
block_should_not_contains = ["command_block", "test", "spawn", "infested"]
unobtainable_blocks = [block for block in blocks if any(x in block for x in block_should_not_contains)]
blocks = [
	block for block in blocks
	if block not in unobtainable_blocks
	if any(x in block for x in ["sulfur", "cinnabar", "bounce"])
	or block in [
		]
]
blocks = [block for block in blocks
		  if block not in unobtainable_blocks		# If the block is not in the unobtainable list
]

# Remove duplicates while keeping the original order
blocks = list(dict.fromkeys(blocks))

# Create the required folders if they don't exist
for folder in ("advancement", "function"):
	os.makedirs(folder, exist_ok=True)

scoreboard_add_lines = []
advancement_check_lines = []

# Generate the advancements for every item in new_blocks
for block_id in blocks:
	block_name = block_id.replace("minecraft:", "").replace("_", " ").title()
	print(f"Generating advancement for {block_name}...")
	block_function = block_id.replace("minecraft:", "")
	print(f"Generating advancement for {block_function}...")

	# Create the advancement and function contents
	advancement = template_advancement.replace("___ITEM_ID___", block_id).replace("___ITEM_FUNCTION___", block_function).replace("___ITEM_NAME___", block_name)
	function = template_function.replace("___ITEM_ID___", block_function).replace("___ITEM_NAME___", block_name)

	scoreboard_add_lines.append(f"scoreboard objectives add aia.data.item.{block_function} dummy")
	advancement_check_lines.append(
		f"execute if entity @p[tag=aia.temp,advancements={{aia:xxx/{block_function}=false}}] if score @s aia.data.item.{block_function} matches 1 run advancement grant @p[tag=aia.temp] only aia:xxx/{block_function}"
	)

	# Save the files
	file_name = block_id.replace("minecraft:", "")
	with open(f"advancement/{file_name}.json", "w", encoding="utf-8") as file:
		file.write(advancement)
	with open(f"function/{file_name}.mcfunction", "w", encoding="utf-8") as file:
		file.write(function)

with open("scoreboard_add.mcfunction", "w", encoding="utf-8") as file:
	file.write("\n".join(scoreboard_add_lines) + "\n")

with open("advancement_check.mcfunction", "w", encoding="utf-8") as file:
	file.write("\n".join(advancement_check_lines) + "\n")


