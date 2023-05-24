execute store result score DrawFreeAxisCircle.OrbitX KzeMapSimplification run data get entity @s Pos[0] 100
scoreboard players operation DrawFreeAxisCircle.OrbitX KzeMapSimplification -= DrawFreeAxisCircle.CenterX KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitX KzeMapSimplification *= DrawFreeAxisCircle.Radius KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitX KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitX KzeMapSimplification += DrawFreeAxisCircle.CenterX KzeMapSimplification
execute store result entity @s Pos[0] double 0.01 run scoreboard players get DrawFreeAxisCircle.OrbitX KzeMapSimplification

execute store result score DrawFreeAxisCircle.OrbitY KzeMapSimplification run data get entity @s Pos[1] 100
scoreboard players operation DrawFreeAxisCircle.OrbitY KzeMapSimplification -= DrawFreeAxisCircle.CenterY KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitY KzeMapSimplification *= DrawFreeAxisCircle.Radius KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitY KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitY KzeMapSimplification += DrawFreeAxisCircle.CenterY KzeMapSimplification
execute store result entity @s Pos[1] double 0.01 run scoreboard players get DrawFreeAxisCircle.OrbitY KzeMapSimplification

execute store result score DrawFreeAxisCircle.OrbitZ KzeMapSimplification run data get entity @s Pos[2] 100
scoreboard players operation DrawFreeAxisCircle.OrbitZ KzeMapSimplification -= DrawFreeAxisCircle.CenterZ KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitZ KzeMapSimplification *= DrawFreeAxisCircle.Radius KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitZ KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.OrbitZ KzeMapSimplification += DrawFreeAxisCircle.CenterZ KzeMapSimplification
execute store result entity @s Pos[2] double 0.01 run scoreboard players get DrawFreeAxisCircle.OrbitZ KzeMapSimplification

execute if score DrawFreeAxisCircle.Tags KzeMapSimplification matches 1.. run data modify entity @s Tags append from storage kms:draw_free_axis_circle Tags[]
tag @s remove kms_draw_free_axis_circle_init
