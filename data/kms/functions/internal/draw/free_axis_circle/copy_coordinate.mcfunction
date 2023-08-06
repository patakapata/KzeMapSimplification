data merge entity @s {Tags: ["kms_draw_free_axis_circle", "kms_draw_free_axis_circle_temp", "kms_draw_free_axis_circle_center"]}
teleport @s ~ ~ ~ ~ ~
execute store result score DrawFreeAxisCircle.CenterX KzeMapSimplification run data get entity @s Pos[0] 100
execute store result score DrawFreeAxisCircle.CenterY KzeMapSimplification run data get entity @s Pos[1] 100
execute store result score DrawFreeAxisCircle.CenterZ KzeMapSimplification run data get entity @s Pos[2] 100
