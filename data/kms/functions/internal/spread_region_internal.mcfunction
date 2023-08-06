data merge entity @s {Tags: ["kms_spread_region"]}

execute if score SpreadRegion.Tags KzeMapSimplification matches 1.. run data modify entity @s Tags append from storage kms:spread_region Tags[]

execute store result storage kms:random_number Max int 1 run scoreboard players get SpreadRegion.DiffX KzeMapSimplification
function kms:random_number
execute store result score SpreadRegion.$ KzeMapSimplification run data get storage kms:random_number Result 1
scoreboard players operation SpreadRegion.$ KzeMapSimplification += SpreadRegion.StartX KzeMapSimplification
execute store result entity @s Pos[0] double 0.01 run scoreboard players get SpreadRegion.$ KzeMapSimplification

execute store result storage kms:random_number Max int 1 run scoreboard players get SpreadRegion.DiffY KzeMapSimplification
function kms:random_number
execute store result score SpreadRegion.$ KzeMapSimplification run data get storage kms:random_number Result 1
scoreboard players operation SpreadRegion.$ KzeMapSimplification += SpreadRegion.StartY KzeMapSimplification
execute store result entity @s Pos[1] double 0.01 run scoreboard players get SpreadRegion.$ KzeMapSimplification

execute store result storage kms:random_number Max int 1 run scoreboard players get SpreadRegion.DiffZ KzeMapSimplification
function kms:random_number
execute store result score SpreadRegion.$ KzeMapSimplification run data get storage kms:random_number Result 1
scoreboard players operation SpreadRegion.$ KzeMapSimplification += SpreadRegion.StartZ KzeMapSimplification
execute store result entity @s Pos[2] double 0.01 run scoreboard players get SpreadRegion.$ KzeMapSimplification
