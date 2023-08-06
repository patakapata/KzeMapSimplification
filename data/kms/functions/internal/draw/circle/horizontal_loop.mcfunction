execute positioned ^ ^ ^1 summon marker run function kms:internal/draw/circle/horizontal_child
scoreboard players add DrawCircle.CurrentStep KzeMapSimplification 1
scoreboard players operation DrawCircle.$ KzeMapSimplification = DrawCircle.AnglePart KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification *= DrawCircle.CurrentStep KzeMapSimplification
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get DrawCircle.$ KzeMapSimplification
execute if score DrawCircle.CurrentStep KzeMapSimplification < DrawCircle.Steps KzeMapSimplification rotated as @s run function kms:internal/draw/circle/horizontal_loop
