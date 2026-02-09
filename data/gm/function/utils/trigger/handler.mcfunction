execute as @a[tag=_gm.editor,scores={gm-CreateGUI=1}] run function gm:zprivate/gui_create/profile/main
execute as @a[tag=_gm.editor,scores={gm-CreatePage=1}] run function gm:zprivate/gui_create/page/main with entity @s SelectedItem.components."minecraft:custom_data".gm.AddPage
execute as @a[tag=_gm.editor,scores={gm-EditPage=1}] run function gm:zprivate/dialog/edit_gui/page/get_items/main with entity @s SelectedItem.components."minecraft:custom_data".gm.EditPage
execute as @a[tag=_gm.editor,scores={gm-Open=1}] run function gm:zprivate/gui_spawn/chest_minecart/main with entity @s SelectedItem.components."minecraft:custom_data".gm.Open
execute as @a[tag=_gm.editor,scores={gm-Settings=1..}] at @s run function gm:settings

scoreboard players set @a[scores={gm-Open=1..}] gm-Open 0
scoreboard players set @a[scores={gm-CreateGUI=1..}] gm-CreateGUI 0
scoreboard players set @a[scores={gm-EditPage=1..}] gm-EditPage 0
scoreboard players set @a[scores={gm-CreatePage=1..}] gm-CreatePage 0
scoreboard players set @a[scores={gm-Settings=1..}] gm-Settings 0

scoreboard players enable @a[tag=_gm.editor] gm-Open
scoreboard players enable @a[tag=_gm.editor] gm-CreateGUI
scoreboard players enable @a[tag=_gm.editor] gm-EditPage
scoreboard players enable @a[tag=_gm.editor] gm-CreatePage
scoreboard players enable @a[tag=_gm.editor] gm-Settings
