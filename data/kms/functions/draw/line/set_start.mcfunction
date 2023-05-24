execute if entity @s run data modify storage kms:draw_line Start set from entity @s Pos
execute unless entity @s run summon marker ~ ~ ~ {Tags: ["kms_draw_line_start"]}
execute unless entity @s as @e[limit=1,tag=kms_draw_line_start] run function kms:draw/line/set_start
kill @s[tag=kms_draw_line_start]
