data merge entity @s {Tags: ["kms", "kms_draw_circle", "kms_draw_circle_center"]}
data modify entity @s Pos set from storage kms:draw_circle Center

execute if score DrawCircle.Tags KzeMapSimplification matches 1.. run data modify entity @s Tags append from storage kms:draw_circle Tags[]
execute if score DrawCircle.Steps KzeMapSimplification matches 1.. at @s run function kms:internal/draw/circle/horizontal_loop
kill @s
