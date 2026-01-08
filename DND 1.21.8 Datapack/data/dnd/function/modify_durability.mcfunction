$item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:damage":$(value)}}

execute as @s if items entity @s weapon *[minecraft:damage=5, minecraft:custom_model_data={"strings":["club"]}] run function dnd:handle_broken_item