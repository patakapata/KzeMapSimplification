teleport @s ~ ~ ~ ~ ~

execute if data storage kms:rotation_inversed {Yaw: true} store result entity @s Rotation[0] float 0.01 run data get entity @s Rotation[0] -100
execute if data storage kms:rotation_inversed {Pitch: true} store result entity @s Rotation[1] float 0.01 run data get entity @s Rotation[1] -100

execute store result score RotationInversed.Tags KzeMapSimplification run data get storage kms:rotation_inversed Tags
execute if score RotationInversed.Tags KzeMapSimplification matches 1.. run data modify entity @s Tags append from storage kms:rotation_inversed Tags[]

tag @s remove kms_rotation_inversed_init