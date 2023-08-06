execute summon marker run function kms:internal/draw/line/copy_pos_nest
scoreboard players remove DrawLine.Steps KzeMapSimplification 1
execute if score DrawLine.Steps KzeMapSimplification matches 1.. run function kms:internal/draw/line/loop
