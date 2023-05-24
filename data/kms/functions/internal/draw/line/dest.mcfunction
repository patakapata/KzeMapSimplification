execute store result score DrawLine.Dest.X KzeMapSimplification run data get entity @s Pos[0] 100
execute store result score DrawLine.Dest.Y KzeMapSimplification run data get entity @s Pos[1] 100
execute store result score DrawLine.Dest.Z KzeMapSimplification run data get entity @s Pos[2] 100

scoreboard players operation DrawLine.Dest.X KzeMapSimplification -= DrawLine.Self.X KzeMapSimplification
scoreboard players operation DrawLine.Dest.Y KzeMapSimplification -= DrawLine.Self.Y KzeMapSimplification
scoreboard players operation DrawLine.Dest.Z KzeMapSimplification -= DrawLine.Self.Z KzeMapSimplification

scoreboard players operation DrawLine.Dest.X KzeMapSimplification *= DrawLine.Self.Distance KzeMapSimplification
scoreboard players operation DrawLine.Dest.Y KzeMapSimplification *= DrawLine.Self.Distance KzeMapSimplification
scoreboard players operation DrawLine.Dest.Z KzeMapSimplification *= DrawLine.Self.Distance KzeMapSimplification

scoreboard players operation DrawLine.Dest.X KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawLine.Dest.Y KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation DrawLine.Dest.Z KzeMapSimplification /= 100 KzeMapSimplification

scoreboard players operation DrawLine.Dest.X KzeMapSimplification += DrawLine.Self.X KzeMapSimplification
scoreboard players operation DrawLine.Dest.Y KzeMapSimplification += DrawLine.Self.Y KzeMapSimplification
scoreboard players operation DrawLine.Dest.Z KzeMapSimplification += DrawLine.Self.Z KzeMapSimplification

execute store result storage kms:draw_line End[0] double 0.01 run scoreboard players get DrawLine.Dest.X KzeMapSimplification
execute store result storage kms:draw_line End[1] double 0.01 run scoreboard players get DrawLine.Dest.Y KzeMapSimplification
execute store result storage kms:draw_line End[2] double 0.01 run scoreboard players get DrawLine.Dest.Z KzeMapSimplification
kill @s
