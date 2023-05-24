execute at @s run summon marker ^ ^ ^1 {Tags: ["kms_draw_circle", "kms_draw_circle_init"]}
execute if score DrawCircle.Tags KzeMapSimplification matches 1.. as @e[tag=kms_draw_circle_init] run data modify entity @s Tags append from storage kms:draw_circle Tags[]
execute as @e[tag=kms_draw_circle_init] run function kms:internal/draw/circle/multiply_radius
scoreboard players add DrawCircle.CurrentStep KzeMapSimplification 1
execute rotated as @s as @e[tag=kms_draw_circle_init] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players operation DrawCircle.$ KzeMapSimplification = DrawCircle.AnglePart KzeMapSimplification
scoreboard players operation DrawCircle.$ KzeMapSimplification *= DrawCircle.CurrentStep KzeMapSimplification
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get DrawCircle.$ KzeMapSimplification
tag @e remove kms_draw_circle_init
execute if score DrawCircle.CurrentStep KzeMapSimplification < DrawCircle.Steps KzeMapSimplification run function kms:internal/draw/circle/vertical_loop