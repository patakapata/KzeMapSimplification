scoreboard players set DrawCircle.CurrentStep KzeMapSimplification 0
scoreboard players set DrawCircle.AnglePart KzeMapSimplification 36000
execute store result score DrawCircle.Steps KzeMapSimplification run data get storage kms:draw_circle Steps 1
execute store result score DrawCircle.CenterX KzeMapSimplification run data get storage kms:draw_circle Center[0] 100
execute store result score DrawCircle.CenterY KzeMapSimplification run data get storage kms:draw_circle Center[1] 100
execute store result score DrawCircle.CenterZ KzeMapSimplification run data get storage kms:draw_circle Center[2] 100
execute store result score DrawCircle.Radius KzeMapSimplification run data get storage kms:draw_circle Radius 100
execute store result score DrawCircle.Tags KzeMapSimplification run data get storage kms:draw_circle Tags
execute if data storage kms:draw_circle {AdaptiveStep: true} run scoreboard players operation DrawCircle.Steps KzeMapSimplification *= DrawCircle.Radius KzeMapSimplification
execute if data storage kms:draw_circle {AdaptiveStep: true} run scoreboard players operation DrawCircle.Steps KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawCircle.AnglePart KzeMapSimplification /= DrawCircle.Steps KzeMapSimplification
summon marker ~ ~ ~ {Tags: ["kms_draw_circle_center"]}
execute as @e[type=marker,tag=kms_draw_circle_center] run data modify entity @s Pos set from storage kms:draw_circle Center
execute store result score DrawCircle.Yaw KzeMapSimplification run data get storage kms:draw_circle Yaw 100
scoreboard players add DrawCircle.Yaw KzeMapSimplification 9000
execute as @e[type=marker,tag=kms_draw_circle_center] store result entity @s Rotation[0] float 0.01 run scoreboard players get DrawCircle.Yaw KzeMapSimplification
execute if score DrawCircle.Tags KzeMapSimplification matches 1.. as @e[tag=kms_draw_circle_center] run data modify entity @s Tags append from storage kms:draw_circle Tags[]
execute if score DrawCircle.Steps KzeMapSimplification matches 1.. as @e[type=marker,tag=kms_draw_circle_center] at @s run function kms:internal/draw/circle/vertical_loop
kill @e[type=marker,tag=kms_draw_circle_center]
