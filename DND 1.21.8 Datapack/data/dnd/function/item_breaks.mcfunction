tellraw @s "Item is damaged!"

scoreboard objectives add durability dummy

scoreboard players set @s durability 0

execute store result score @s durability run data get entity @s SelectedItem.components."minecraft:damage"

scoreboard players add @s durability 1

execute store result storage dnd:macro attribute.value int 1 run scoreboard players get @s durability

function dnd:modify_durability with storage dnd:macro attribute