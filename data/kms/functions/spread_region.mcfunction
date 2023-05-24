execute store result score SpreadRegion.Count KzeMapSimplification run data get storage kms:spread_region Count 1
execute store result score SpreadRegion.Tags KzeMapSimplification run data get storage kms:spread_region Tags
data modify storage kms:min_and_max A set from storage kms:spread_region Start
data modify storage kms:min_and_max B set from storage kms:spread_region End
function kms:min_and_max
data modify storage kms:spread_region Start set from storage kms:min_and_max Result.Min
data modify storage kms:spread_region End set from storage kms:min_and_max Result.Max
data merge storage kms:random_number {Offset: 0}

execute store result score SpreadRegion.StartX KzeMapSimplification run data get storage kms:spread_region Start[0] 100
execute store result score SpreadRegion.StartY KzeMapSimplification run data get storage kms:spread_region Start[1] 100
execute store result score SpreadRegion.StartZ KzeMapSimplification run data get storage kms:spread_region Start[2] 100
execute store result score SpreadRegion.DiffX KzeMapSimplification run data get storage kms:spread_region End[0] 100
execute store result score SpreadRegion.DiffY KzeMapSimplification run data get storage kms:spread_region End[1] 100
execute store result score SpreadRegion.DiffZ KzeMapSimplification run data get storage kms:spread_region End[2] 100
scoreboard players operation SpreadRegion.DiffX KzeMapSimplification -= SpreadRegion.StartX KzeMapSimplification
scoreboard players operation SpreadRegion.DiffY KzeMapSimplification -= SpreadRegion.StartY KzeMapSimplification
scoreboard players operation SpreadRegion.DiffZ KzeMapSimplification -= SpreadRegion.StartZ KzeMapSimplification

execute if score SpreadRegion.Count KzeMapSimplification matches 1.. run function kms:internal/spread_region_loop_body
