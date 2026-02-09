execute as @a[tag=_gm.editor] if score @s gm-CreateGUI matches 1 run function gm:zprivate/gui_create/profile/main
execute as @a[tag=_gm.editor] if score @s gm-CreatePage matches 1 run function gm:zprivate/gui_create/page/main with entity @s SelectedItem.components."minecraft:custom_data".gm.AddPage
execute as @a[tag=_gm.editor] if score @s gm-EditPage matches 1 run function gm:zprivate/dialog/edit_gui/page/get_items/main with entity @s SelectedItem.components."minecraft:custom_data".gm.EditPage
execute as @a[tag=_gm.editor] if score @s gm-Open matches 1 run function gm:zprivate/gui_spawn/chest_minecart/main with entity @s SelectedItem.components."minecraft:custom_data".gm.Open

scoreboard players set @a[scores={gm-Open=1..}] gm-Open 0
scoreboard players set @a[scores={gm-CreateGUI=1..}] gm-CreateGUI 0
scoreboard players set @a[scores={gm-EditPage=1..}] gm-EditPage 0
scoreboard players set @a[scores={gm-CreatePage=1..}] gm-CreatePage 0

scoreboard players enable @a[tag=_gm.editor] gm-Open
scoreboard players enable @a[tag=_gm.editor] gm-CreateGUI
scoreboard players enable @a[tag=_gm.editor] gm-EditPage
scoreboard players enable @a[tag=_gm.editor] gm-CreatePage
