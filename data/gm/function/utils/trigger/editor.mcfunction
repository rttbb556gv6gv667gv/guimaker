# GM Editor Tag Manager
# Usage: function gm:utils/trigger/editor with {action:"add", player_name:"PlayerName"}
# action: "add" or "remove"

# Check if player exists
$execute unless entity @p[name=$(player_name)] run tellraw @s [{"text":"[GM] Error: Player '$(player_name)' not found","color":"red"}]
$execute unless entity @p[name=$(player_name)] run return fail

# Set action
$data modify storage gm:temp temp.action set value "$(action)"

# Apply tag
$execute if data storage gm:temp {temp:{action:"add"}} run tag @p[name=$(player_name),limit=1] add _gm.editor
$execute if data storage gm:temp {temp:{action:"remove"}} run tag @p[name=$(player_name),limit=1] remove _gm.editor

# Success messages
$execute if data storage gm:temp {temp:{action:"add"}} run tellraw @p[name=$(player_name)] [{"text":"[GM] ","color":"gray"},{"text":"Editor permissions granted","color":"green"}]
$execute if data storage gm:temp {temp:{action:"remove"}} run tellraw @p[name=$(player_name)] [{"text":"[GM] ","color":"gray"},{"text":"Editor permissions revoked","color":"red"}]

# Cleanup
data remove storage gm:temp temp.action
