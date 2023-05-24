summon marker ~ ~ ~ {Tags: ["kms_spread_region"]}
execute as @e[tag=kms_spread_region,type=marker] run function kms:internal/spread_region_internal
scoreboard players remove SpreadRegion.Count KzeMapSimplification 1
execute if score SpreadRegion.Count KzeMapSimplification matches 1.. run function kms:internal/spread_region_loop_body
