data modify storage kms:draw_line Start set from entity @s Pos
execute store result score DrawLine.Self.X KzeMapSimplification run data get entity @s Pos[0] 100
execute store result score DrawLine.Self.Y KzeMapSimplification run data get entity @s Pos[1] 100
execute store result score DrawLine.Self.Z KzeMapSimplification run data get entity @s Pos[2] 100
kill @s
