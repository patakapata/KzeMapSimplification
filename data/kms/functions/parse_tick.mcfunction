execute store result score ParseTick.MilliSeconds KzeMapSimplification run data get storage kms:parse_tick Source
execute store result score ParseTick.DecompositionTarget KzeMapSimplification run data get storage kms:parse_tick DecompositionTarget
# Milli seconds
scoreboard players operation ParseTick.MilliSeconds KzeMapSimplification /= 2 KzeMapSimplification
# Seconds
scoreboard players operation ParseTick.Seconds KzeMapSimplification = ParseTick.MilliSeconds KzeMapSimplification
scoreboard players operation ParseTick.Seconds KzeMapSimplification /= 10 KzeMapSimplification
scoreboard players operation ParseTick.Seconds KzeMapSimplification *= 10 KzeMapSimplification
scoreboard players operation ParseTick.MilliSeconds KzeMapSimplification -= ParseTick.Seconds KzeMapSimplification
scoreboard players operation ParseTick.Seconds KzeMapSimplification /= 10 KzeMapSimplification
# Minutes
execute unless score ParseTick.DecompositionTarget KzeMapSimplification matches 1.. run scoreboard players set ParseTick.Minutes KzeMapSimplification 0
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 1.. run scoreboard players operation ParseTick.Minutes KzeMapSimplification = ParseTick.Seconds KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 1.. run scoreboard players operation ParseTick.Minutes KzeMapSimplification /= 60 KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 1.. run scoreboard players operation ParseTick.Seconds KzeMapSimplification %= 60 KzeMapSimplification
# Hours
execute unless score ParseTick.DecompositionTarget KzeMapSimplification matches 2.. run scoreboard players set ParseTick.Hours KzeMapSimplification 0
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 2.. run scoreboard players operation ParseTick.Hours KzeMapSimplification = ParseTick.Minutes KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 2.. run scoreboard players operation ParseTick.Hours KzeMapSimplification /= 60 KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 2.. run scoreboard players operation ParseTick.Minutes KzeMapSimplification %= 60 KzeMapSimplification
# Days
execute unless score ParseTick.DecompositionTarget KzeMapSimplification matches 3.. run scoreboard players set ParseTick.Days KzeMapSimplification 0
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 3.. run scoreboard players operation ParseTick.Days KzeMapSimplification = ParseTick.Hours KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 3.. run scoreboard players operation ParseTick.Days KzeMapSimplification /= 24 KzeMapSimplification
execute if score ParseTick.DecompositionTarget KzeMapSimplification matches 3.. run scoreboard players operation ParseTick.Hours KzeMapSimplification %= 24 KzeMapSimplification

execute store result storage kms:parse_tick Result.MilliSeconds int 1 run scoreboard players get ParseTick.MilliSeconds KzeMapSimplification
execute store result storage kms:parse_tick Result.Seconds int 1 run scoreboard players get ParseTick.Seconds KzeMapSimplification
execute store result storage kms:parse_tick Result.Minutes int 1 run scoreboard players get ParseTick.Minutes KzeMapSimplification
execute store result storage kms:parse_tick Result.Hours int 1 run scoreboard players get ParseTick.Hours KzeMapSimplification
execute store result storage kms:parse_tick Result.Days int 1 run scoreboard players get ParseTick.Days KzeMapSimplification
