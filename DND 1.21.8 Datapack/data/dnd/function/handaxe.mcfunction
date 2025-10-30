advancement revoke @s only dnd:handaxe
scoreboard objectives add handaxe_attack_score dummy

execute store result score @s handaxe_attack_score run random value 1..6
execute as @s[scores={handaxe_attack_score=1}] at @p run function dnd:damage1
execute as @s[scores={handaxe_attack_score=2}] at @p run function dnd:damage2
execute as @s[scores={handaxe_attack_score=3}] at @p run function dnd:damage3
execute as @s[scores={handaxe_attack_score=4}] at @p run function dnd:damage4
execute as @s[scores={handaxe_attack_score=5}] at @p run function dnd:damage5
execute as @s[scores={handaxe_attack_score=6}] at @p run function dnd:damage6

scoreboard players reset @s handaxe_attack_score