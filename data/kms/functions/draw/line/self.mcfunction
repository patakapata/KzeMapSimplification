summon marker ~ ~ ~ {Tags: ["kms", "kms_draw_line", "kms_draw_line_self", "kms_draw_line_self_origin"]}
summon marker ^ ^ ^1 {Tags: ["kms", "kms_draw_line", "kms_draw_line_self", "kms_draw_line_self_dest"]}
teleport @e[tag=kms_draw_line_self_origin,type=marker] ~ ~ ~ ~ ~
execute store result score DrawLine.Self.Distance KzeMapSimplification run data get storage kms:draw_line SelfDistance 100
execute as @e[tag=kms_draw_line_self_origin] at @s run function kms:internal/draw/line/self
execute as @e[tag=kms_draw_line_self_dest] at @s run function kms:internal/draw/line/dest
function kms:draw/line
