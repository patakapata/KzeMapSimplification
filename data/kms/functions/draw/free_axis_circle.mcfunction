# 拾ってきたやつ

summon marker ~ ~ ~ {Tags: ["kms_draw_free_axis_circle", "kms_draw_free_axis_circle_temp", "kms_draw_free_axis_circle_center"]}
summon marker ~ ~ ~ {Tags: ["kms_draw_free_axis_circle", "kms_draw_free_axis_circle_temp", "kms_draw_free_axis_circle_orbit"]}
execute as @e[limit=1,tag=kms_draw_free_axis_circle_center] run function kms:internal/draw/free_axis_circle/copy_coordinate

scoreboard players set DrawFreeAxisCircle.CurrentStep KzeMapSimplification 0
scoreboard players set DrawFreeAxisCircle.AnglePart KzeMapSimplification 36000
execute store result score DrawFreeAxisCircle.Tags KzeMapSimplification run data get storage kms:draw_free_axis_circle Tags
execute store result score DrawFreeAxisCircle.Steps KzeMapSimplification run data get storage kms:draw_free_axis_circle Steps 1
execute store result score DrawFreeAxisCircle.MaxStep KzeMapSimplification run data get storage kms:draw_free_axis_circle MaxStep 1
execute store result score DrawFreeAxisCircle.Radius KzeMapSimplification run data get storage kms:draw_free_axis_circle Radius 100
execute if data storage kms:draw_free_axis_circle {AdaptiveStep: true} run function kms:internal/draw/free_axis_circle/apply_adaptive_step
scoreboard players operation DrawFreeAxisCircle.AnglePart KzeMapSimplification /= DrawFreeAxisCircle.Steps KzeMapSimplification
execute if score DrawFreeAxisCircle.MaxStep KzeMapSimplification matches 1.. if score DrawFreeAxisCircle.MaxStep KzeMapSimplification < DrawFreeAxisCircle.Steps KzeMapSimplification run scoreboard players operation DrawFreeAxisCircle.Steps KzeMapSimplification = DrawFreeAxisCircle.MaxStep KzeMapSimplification
execute store result score DrawFreeAxisCircle.CurrentAngle KzeMapSimplification run data get entity @e[tag=kms_draw_free_axis_circle_center,limit=1,distance=..0.01] Rotation[0] 100

execute if entity @e[tag=kms_draw_free_axis_circle_center,limit=1,distance=..0.01,x_rotation=-90] run scoreboard players operation DrawFreeAxisCircle.CurrentAngle KzeMapSimplification *= -1 KzeMapSimplification
execute if entity @e[tag=kms_draw_free_axis_circle_center,limit=1,distance=..0.01,x_rotation=-90] run scoreboard players add DrawFreeAxisCircle.CurrentAngle KzeMapSimplification 18000

execute store result score DrawFreeAxisCircle.RotationOffset KzeMapSimplification run data get storage kms:draw_free_axis_circle Rotation 100
scoreboard players operation DrawFreeAxisCircle.CurrentAngle KzeMapSimplification += DrawFreeAxisCircle.RotationOffset KzeMapSimplification

execute if score DrawFreeAxisCircle.Steps KzeMapSimplification matches 1.. as @e[tag=kms_draw_free_axis_circle_center,type=marker] at @s run function kms:internal/draw/free_axis_circle/loop

kill @e[type=marker,tag=kms_draw_free_axis_circle_temp]
