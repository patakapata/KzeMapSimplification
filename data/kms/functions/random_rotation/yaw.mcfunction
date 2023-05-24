data merge storage kms:random_number {Max: 360, Offset: -180}
function kms:random_number
execute store result entity @s Rotation[0] float 1 run data get storage kms:random_number Result
