execute store result score AddMotion.Source KzeMapSimplification run data get entity @s Pos[0] 10000
execute store result score AddMotion.Add KzeMapSimplification run data get entity @s Motion[0] 10000
scoreboard players operation AddMotion.Source KzeMapSimplification += AddMotion.Add KzeMapSimplification
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get AddMotion.Source KzeMapSimplification

execute store result score AddMotion.Source KzeMapSimplification run data get entity @s Pos[1] 10000
execute store result score AddMotion.Add KzeMapSimplification run data get entity @s Motion[1] 10000
scoreboard players operation AddMotion.Source KzeMapSimplification += AddMotion.Add KzeMapSimplification
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get AddMotion.Source KzeMapSimplification

execute store result score AddMotion.Source KzeMapSimplification run data get entity @s Pos[2] 10000
execute store result score AddMotion.Add KzeMapSimplification run data get entity @s Motion[2] 10000
scoreboard players operation AddMotion.Source KzeMapSimplification += AddMotion.Add KzeMapSimplification
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get AddMotion.Source KzeMapSimplification