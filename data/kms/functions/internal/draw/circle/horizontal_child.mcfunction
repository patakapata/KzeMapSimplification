data merge entity @s {Tags: ["kms", "kms_draw_circle", "kms_draw_orbit"]}
execute if score DrawCircle.Tags KzeMapSimplification matches 1.. run data modify entity @s Tags append from storage kms:draw_circle Tags[]
function kms:internal/draw/circle/multiply_radius
execute positioned as @s run teleport @s ~ ~ ~ ~ ~
