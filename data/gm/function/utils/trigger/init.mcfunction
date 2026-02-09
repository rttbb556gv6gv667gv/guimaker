# GM GUI System - Load
# Scoreboard objectives
scoreboard objectives add gm-Open trigger "GM: Open GUI"
scoreboard objectives add gm-CreateGUI trigger "GM: Create GUI"
scoreboard objectives add gm-EditPage trigger "GM: Edit Page"
scoreboard objectives add gm-CreatePage trigger "GM: Create Page"

# Version info
tellraw @a[tag=_gm.admin] {"text":"[GM] Trigger System loaded successfully","color":"green"}
