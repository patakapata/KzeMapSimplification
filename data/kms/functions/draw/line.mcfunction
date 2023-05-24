execute store result score DrawLine.Tags KzeMapSimplification run data get storage kms:draw_line Tags
execute if data storage kms:draw_line {EnableEdge: true} run summon marker ~ ~ ~ {Tags: ["kms", "kms_draw_line", "kms_draw_line_start", "kms_draw_line_initial"]}
execute if data storage kms:draw_line {EnableEdge: true} run summon marker ~ ~ ~ {Tags: ["kms", "kms_draw_line", "kms_draw_line_end", "kms_draw_line_initial"]}
execute if score DrawLine.Tags KzeMapSimplification matches 1.. as @e[type=marker,tag=kms_draw_line_initial] run data modify entity @s Tags append from storage kms:draw_line Tags[]
execute as @e[type=marker,tag=kms_draw_line_start,tag=kms_draw_line_initial] run data modify entity @s Pos set from storage kms:draw_line Start
execute as @e[type=marker,tag=kms_draw_line_end,tag=kms_draw_line_initial] run data modify entity @s Pos set from storage kms:draw_line End

execute store result score DrawLine.Start.X KzeMapSimplification run data get storage kms:draw_line Start[0] 100
scoreboard players set DrawLine.Diff.X KzeMapSimplification 0
scoreboard players operation DrawLine.Diff.X KzeMapSimplification -= DrawLine.Start.X KzeMapSimplification
execute store result score DrawLine.Start.Y KzeMapSimplification run data get storage kms:draw_line Start[1] 100
scoreboard players set DrawLine.Diff.Y KzeMapSimplification 0
scoreboard players operation DrawLine.Diff.Y KzeMapSimplification -= DrawLine.Start.Y KzeMapSimplification
execute store result score DrawLine.Start.Z KzeMapSimplification run data get storage kms:draw_line Start[2] 100
scoreboard players set DrawLine.Diff.Z KzeMapSimplification 0
scoreboard players operation DrawLine.Diff.Z KzeMapSimplification -= DrawLine.Start.Z KzeMapSimplification
execute store result score DrawLine.End.X KzeMapSimplification run data get storage kms:draw_line End[0] 100
scoreboard players operation DrawLine.Diff.X KzeMapSimplification += DrawLine.End.X KzeMapSimplification
execute store result score DrawLine.End.Y KzeMapSimplification run data get storage kms:draw_line End[1] 100
scoreboard players operation DrawLine.Diff.Y KzeMapSimplification += DrawLine.End.Y KzeMapSimplification
execute store result score DrawLine.End.Z KzeMapSimplification run data get storage kms:draw_line End[2] 100
scoreboard players operation DrawLine.Diff.Z KzeMapSimplification += DrawLine.End.Z KzeMapSimplification
execute store result score DrawLine.Steps KzeMapSimplification run data get storage kms:draw_line Steps 1
scoreboard players add DrawLine.Steps KzeMapSimplification 1
scoreboard players operation DrawLine.Diff.X KzeMapSimplification /= DrawLine.Steps KzeMapSimplification
scoreboard players operation DrawLine.Diff.Y KzeMapSimplification /= DrawLine.Steps KzeMapSimplification
scoreboard players operation DrawLine.Diff.Z KzeMapSimplification /= DrawLine.Steps KzeMapSimplification
scoreboard players remove DrawLine.Steps KzeMapSimplification 1

execute if score DrawLine.Steps KzeMapSimplification matches 1.. run function kms:internal/draw/line/loop
execute if data storage kms:draw_line {EnableEdge: true} run tag @e[tag=kms_draw_line_initial] remove kms_draw_line_initial
