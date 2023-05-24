data merge storage kms:min_and_max {Result: {Min: [0.0d, 0.0d, 0.0d], Max: [0.0d, 0.0d, 0.0d]}}
#
execute store result score MinAndMax.A KzeMapSimplification run data get storage kms:min_and_max A[0] 100
execute store result score MinAndMax.B KzeMapSimplification run data get storage kms:min_and_max B[0] 100
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[0] set from storage kms:min_and_max A[0]
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[0] set from storage kms:min_and_max B[0]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[0] set from storage kms:min_and_max A[0]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[0] set from storage kms:min_and_max B[0]
#
execute store result score MinAndMax.A KzeMapSimplification run data get storage kms:min_and_max A[1] 100
execute store result score MinAndMax.B KzeMapSimplification run data get storage kms:min_and_max B[1] 100
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[1] set from storage kms:min_and_max A[1]
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[1] set from storage kms:min_and_max B[1]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[1] set from storage kms:min_and_max A[1]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[1] set from storage kms:min_and_max B[1]
#
execute store result score MinAndMax.A KzeMapSimplification run data get storage kms:min_and_max A[2] 100
execute store result score MinAndMax.B KzeMapSimplification run data get storage kms:min_and_max B[2] 100
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[2] set from storage kms:min_and_max A[2]
execute if score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[2] set from storage kms:min_and_max B[2]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Max[2] set from storage kms:min_and_max A[2]
execute unless score MinAndMax.A KzeMapSimplification <= MinAndMax.B KzeMapSimplification run data modify storage kms:min_and_max Result.Min[2] set from storage kms:min_and_max B[2]
