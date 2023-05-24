data modify storage kms:min_and_max A set from storage kms:spread_region Start
data modify storage kms:min_and_max B set from storage kms:spread_region End
function kms:min_and_max
data modify storage kms:spread_region Start set from storage kms:min_and_max Result.Min
data modify storage kms:spread_region End set from storage kms:min_and_max Result.Max

execute store result score SpreadRegion.StartX KzeMapSimplification run data get storage kms:spread_region Start[0] 100
execute store result score SpreadRegion.StartY KzeMapSimplification run data get storage kms:spread_region Start[1] 100
execute store result score SpreadRegion.StartZ KzeMapSimplification run data get storage kms:spread_region Start[2] 100
execute store result score SpreadRegion.DiffX KzeMapSimplification run data get storage kms:spread_region End[0] 100
execute store result score SpreadRegion.DiffY KzeMapSimplification run data get storage kms:spread_region End[1] 100
execute store result score SpreadRegion.DiffZ KzeMapSimplification run data get storage kms:spread_region End[2] 100
scoreboard players operation SpreadRegion.DiffX KzeMapSimplification -= SpreadRegion.StartX KzeMapSimplification
scoreboard players operation SpreadRegion.DiffY KzeMapSimplification -= SpreadRegion.StartY KzeMapSimplification
scoreboard players operation SpreadRegion.DiffZ KzeMapSimplification -= SpreadRegion.StartZ KzeMapSimplification

function kms:internal/spread_region_internal
