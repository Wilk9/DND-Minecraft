advancement revoke @s only dnd:handaxe

scoreboard objectives add attack_score dummy
execute store result score @s attack_score run random value 1..6

function dnd:1d20_check

scoreboard players reset @s attack_score