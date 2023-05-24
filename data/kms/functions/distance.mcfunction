execute store result score Distance.A KzeMapSimplification run data get storage kms:distance A[0] 100
execute store result score Distance.B KzeMapSimplification run data get storage kms:distance B[0] 100
scoreboard players operation Distance.B KzeMapSimplification -= Distance.A KzeMapSimplification
scoreboard players operation Distance.B KzeMapSimplification *= Distance.B KzeMapSimplification
scoreboard players operation Distance.Source KzeMapSimplification = Distance.B KzeMapSimplification

execute store result score Distance.A KzeMapSimplification run data get storage kms:distance A[1] 100
execute store result score Distance.B KzeMapSimplification run data get storage kms:distance B[1] 100
scoreboard players operation Distance.B KzeMapSimplification -= Distance.A KzeMapSimplification
scoreboard players operation Distance.B KzeMapSimplification *= Distance.B KzeMapSimplification
scoreboard players operation Distance.Source KzeMapSimplification += Distance.B KzeMapSimplification

execute store result score Distance.A KzeMapSimplification run data get storage kms:distance A[2] 100
execute store result score Distance.B KzeMapSimplification run data get storage kms:distance B[2] 100
scoreboard players operation Distance.B KzeMapSimplification -= Distance.A KzeMapSimplification
scoreboard players operation Distance.B KzeMapSimplification *= Distance.B KzeMapSimplification
scoreboard players operation Distance.Source KzeMapSimplification += Distance.B KzeMapSimplification

data modify storage kms:sqrt Near set value 0
execute store result storage kms:sqrt Source int 1 run scoreboard players get Distance.Source KzeMapSimplification
function kms:sqrt
execute store result storage kms:distance Result double 0.01 run data get storage kms:sqrt Result 1
