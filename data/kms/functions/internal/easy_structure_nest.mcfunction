setblock ~ ~ ~ structure_block[mode=save]

data modify storage kms:min_and_max A set from entity @e[tag=kms_easy_structure_start,limit=1,sort=nearest] Pos
data modify storage kms:min_and_max B set from entity @e[tag=kms_easy_structure_end,limit=1,sort=nearest] Pos
function kms:min_and_max

execute store result score EasyStructure.Source KzeMapSimplification run data get entity @s Pos[0] -1
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Min[0]
scoreboard players operation EasyStructure.Source KzeMapSimplification += EasyStructure.Target KzeMapSimplification
scoreboard players add EasyStructure.Source KzeMapSimplification 1
execute store result block ~ ~ ~ posX int 1 run scoreboard players get EasyStructure.Source KzeMapSimplification
scoreboard players operation EasyStructure.Source KzeMapSimplification = EasyStructure.Target KzeMapSimplification
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Max[0]
scoreboard players operation EasyStructure.Target KzeMapSimplification -= EasyStructure.Source KzeMapSimplification
scoreboard players add EasyStructure.Target KzeMapSimplification 1
execute store result block ~ ~ ~ sizeX int 1 run scoreboard players get EasyStructure.Target KzeMapSimplification

execute store result score EasyStructure.Source KzeMapSimplification run data get entity @s Pos[1] -1
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Min[1]
scoreboard players operation EasyStructure.Source KzeMapSimplification += EasyStructure.Target KzeMapSimplification
scoreboard players add EasyStructure.Source KzeMapSimplification 1
execute store result block ~ ~ ~ posY int 1 run scoreboard players get EasyStructure.Source KzeMapSimplification
scoreboard players operation EasyStructure.Source KzeMapSimplification = EasyStructure.Target KzeMapSimplification
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Max[1]
scoreboard players operation EasyStructure.Target KzeMapSimplification -= EasyStructure.Source KzeMapSimplification
scoreboard players add EasyStructure.Target KzeMapSimplification 1
execute store result block ~ ~ ~ sizeY int 1 run scoreboard players get EasyStructure.Target KzeMapSimplification

execute store result score EasyStructure.Source KzeMapSimplification run data get entity @s Pos[2] -1
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Min[2]
scoreboard players operation EasyStructure.Source KzeMapSimplification += EasyStructure.Target KzeMapSimplification
scoreboard players add EasyStructure.Source KzeMapSimplification 1
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get EasyStructure.Source KzeMapSimplification
scoreboard players operation EasyStructure.Source KzeMapSimplification = EasyStructure.Target KzeMapSimplification
execute store result score EasyStructure.Target KzeMapSimplification run data get storage kms:min_and_max Result.Max[2]
scoreboard players operation EasyStructure.Target KzeMapSimplification -= EasyStructure.Source KzeMapSimplification
scoreboard players add EasyStructure.Target KzeMapSimplification 1
execute store result block ~ ~ ~ sizeZ int 1 run scoreboard players get EasyStructure.Target KzeMapSimplification
