advancement revoke @s only dnd:club
scoreboard objectives add club_attack_score dummy

execute store result score @s club_attack_score run random value 1..4
execute as @s[scores={club_attack_score=1}] at @p run function dnd:damage1
execute as @s[scores={club_attack_score=2}] at @p run function dnd:damage2
execute as @s[scores={club_attack_score=3}] at @p run function dnd:damage3
execute as @s[scores={club_attack_score=4}] at @p run function dnd:damage4

scoreboard players reset @s club_attack_score