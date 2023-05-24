data merge storage kms:random_number {Max: 180, Offset: -90}
function kms:random_number
execute store result entity @s Rotation[1] float 1 run data get storage kms:random_number Result
