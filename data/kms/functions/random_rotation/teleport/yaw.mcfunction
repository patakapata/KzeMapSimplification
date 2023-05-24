execute at @s run summon marker ~ ~ ~ {Tags: ["kms", "kms_random_rotation", "kms_random_rotation_teleport"]}
teleport @e[tag=kms_random_rotation_teleport,limit=1] @s
execute as @e[tag=kms_random_rotation_teleport] run function kms:random_rotation/yaw
teleport @s @e[tag=kms_random_rotation_teleport,limit=1]
kill @e[tag=kms_random_rotation_teleport]
