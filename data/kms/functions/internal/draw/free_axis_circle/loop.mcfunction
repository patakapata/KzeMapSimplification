
execute store result entity @e[tag=kms_draw_free_axis_circle_orbit,limit=1] Rotation[0] float 0.01 run scoreboard players get DrawFreeAxisCircle.CurrentAngle KzeMapSimplification
scoreboard players operation DrawFreeAxisCircle.CurrentAngle KzeMapSimplification += DrawFreeAxisCircle.AnglePart KzeMapSimplification

execute as @e[tag=kms_draw_free_axis_circle_orbit] rotated as @s positioned as @e[limit=1,tag=kms_draw_free_axis_circle_center] positioned ^ ^ ^-2 run teleport @s ~ ~ ~ ~ ~
execute at @s positioned ~ ~1 ~ positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^100 facing entity @e[limit=1,tag=kms_draw_free_axis_circle_orbit] feet positioned ^ ^ ^100 rotated as @e[sort=nearest,limit=1,tag=kms_draw_free_axis_circle_orbit] positioned ^ ^ ^1 summon marker run function kms:internal/draw/free_axis_circle/process_init
execute as @e[tag=kms_draw_free_axis_circle_init,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @e[tag=kms_draw_free_axis_circle_init] remove kms_draw_free_axis_circle_init

scoreboard players add DrawFreeAxisCircle.CurrentStep KzeMapSimplification 1
execute if score DrawFreeAxisCircle.CurrentStep KzeMapSimplification < DrawFreeAxisCircle.Steps KzeMapSimplification run function kms:internal/draw/free_axis_circle/loop
