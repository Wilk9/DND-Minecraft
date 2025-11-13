scoreboard objectives add 1d20_check_score dummy

execute store result score @s 1d20_check_score run random value 1..20
execute as @s[scores={1d20_check_score=1}] at @p run function dnd:item_breaks
execute as @s[scores={1d20_check_score=2..10}] at @p run function dnd:attack_failed
execute as @s[scores={1d20_check_score=11..19}] at @p run function dnd:attack
execute as @s[scores={1d20_check_score=20}] at @p run function dnd:double_attack

