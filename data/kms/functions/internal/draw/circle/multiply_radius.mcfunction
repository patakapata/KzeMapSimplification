execute store result score DrawCircle.$ KzeMapSimplification run data get entity @s Pos[0] 100
scoreboard players operation DrawCircle.$ KzeMapSimplification -= DrawCircle.CenterX KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification *= DrawCircle.Radius KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification += DrawCircle.CenterX KzeMapSimplification
execute store result entity @s Pos[0] double 0.01 run scoreboard players get DrawCircle.$ KzeMapSimplification

execute store result score DrawCircle.$ KzeMapSimplification run data get entity @s Pos[1] 100
scoreboard players operation DrawCircle.$ KzeMapSimplification -= DrawCircle.CenterY KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification *= DrawCircle.Radius KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification += DrawCircle.CenterY KzeMapSimplification
execute store result entity @s Pos[1] double 0.01 run scoreboard players get DrawCircle.$ KzeMapSimplification

execute store result score DrawCircle.$ KzeMapSimplification run data get entity @s Pos[2] 100
scoreboard players operation DrawCircle.$ KzeMapSimplification -= DrawCircle.CenterZ KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification *= DrawCircle.Radius KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification += DrawCircle.CenterZ KzeMapSimplification
execute store result entity @s Pos[2] double 0.01 run scoreboard players get DrawCircle.$ KzeMapSimplification
