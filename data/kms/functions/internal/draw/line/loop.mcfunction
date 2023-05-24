summon marker ~ ~ ~ {Tags: ["kms", "kms_draw_line", "kms_draw_line_middle", "kms_draw_line_copy_pos"]}
execute as @e[type=marker,tag=kms_draw_line_copy_pos] run function kms:internal/draw/line/copy_pos_nest
scoreboard players remove DrawLine.Steps KzeMapSimplification 1
execute if score DrawLine.Steps KzeMapSimplification matches 1.. run function kms:internal/draw/line/loop