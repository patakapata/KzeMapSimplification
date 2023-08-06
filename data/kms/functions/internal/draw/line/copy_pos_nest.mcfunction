data merge entity @s {Tags: ["kms", "kms_draw_line", "kms_draw_line_middle"]}
execute if score DrawLine.Tags KzeMapSimplification matches 1.. as @s run data modify entity @s Tags append from storage kms:draw_line Tags[]
scoreboard players operation DrawLine.$ KzeMapSimplification = DrawLine.Diff.X KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification *= DrawLine.Steps KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification += DrawLine.Start.X KzeMapSimplification
execute as @s store result entity @s Pos[0] double 0.01 run scoreboard players get DrawLine.$ KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification = DrawLine.Diff.Y KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification *= DrawLine.Steps KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification += DrawLine.Start.Y KzeMapSimplification
execute as @s store result entity @s Pos[1] double 0.01 run scoreboard players get DrawLine.$ KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification = DrawLine.Diff.Z KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification *= DrawLine.Steps KzeMapSimplification
scoreboard players operation DrawLine.$ KzeMapSimplification += DrawLine.Start.Z KzeMapSimplification
execute as @s store result entity @s Pos[2] double 0.01 run scoreboard players get DrawLine.$ KzeMapSimplification
