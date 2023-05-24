execute store result entity @s Pos[0] double 1 run data get storage kms:resolve_text SignPos[0]
execute store result entity @s Pos[1] double 1 run data get storage kms:resolve_text SignPos[1]
execute store result entity @s Pos[2] double 1 run data get storage kms:resolve_text SignPos[2]
execute at @s run data modify block ~ ~ ~ Text1 set from storage kms:resolve_text Source
execute at @s run data modify storage kms:resolve_text Result set from block ~ ~ ~ Text1
kill @s