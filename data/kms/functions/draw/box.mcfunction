data modify storage kms:min_and_max A set from storage kms:draw_box Min
data modify storage kms:min_and_max B set from storage kms:draw_box Max
data modify storage kms:draw_line Tags set from storage kms:draw_box Tags
function kms:min_and_max

data modify storage kms:draw_line EnableEdge set from storage kms:draw_box EnableEdge
data modify storage kms:draw_line Steps set from storage kms:draw_box Steps[0]
data modify storage kms:draw_line Start[0] set from storage kms:min_and_max Result.Min[0]
data modify storage kms:draw_line Start[1] set from storage kms:min_and_max Result.Min[1]
data modify storage kms:draw_line Start[2] set from storage kms:min_and_max Result.Min[2]
data modify storage kms:draw_line End[0] set from storage kms:min_and_max Result.Max[0]
data modify storage kms:draw_line End[1] set from storage kms:min_and_max Result.Min[1]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Min[2]
function kms:draw/line
data modify storage kms:draw_line Start[2] set from storage kms:min_and_max Result.Max[2]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Max[2]
function kms:draw/line
data modify storage kms:draw_line Start[1] set from storage kms:min_and_max Result.Max[1]
data modify storage kms:draw_line End[1] set from storage kms:min_and_max Result.Max[1]
function kms:draw/line
data modify storage kms:draw_line Start[2] set from storage kms:min_and_max Result.Min[2]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Min[2]
function kms:draw/line

data modify storage kms:draw_line EnableEdge set value false
data modify storage kms:draw_line Steps set from storage kms:draw_box Steps[1]
data modify storage kms:draw_line End[0] set from storage kms:min_and_max Result.Min[0]
data modify storage kms:draw_line End[1] set from storage kms:min_and_max Result.Min[1]
function kms:draw/line
data modify storage kms:draw_line Start[2] set from storage kms:min_and_max Result.Max[2]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Max[2]
function kms:draw/line
data modify storage kms:draw_line Start[0] set from storage kms:min_and_max Result.Max[0]
data modify storage kms:draw_line End[0] set from storage kms:min_and_max Result.Max[0]
function kms:draw/line
data modify storage kms:draw_line Start[2] set from storage kms:min_and_max Result.Min[2]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Min[2]
function kms:draw/line

data modify storage kms:draw_line Steps set from storage kms:draw_box Steps[2]
data modify storage kms:draw_line End[1] set from storage kms:min_and_max Result.Max[1]
data modify storage kms:draw_line End[2] set from storage kms:min_and_max Result.Max[2]
function kms:draw/line
data modify storage kms:draw_line Start[0] set from storage kms:min_and_max Result.Min[0]
data modify storage kms:draw_line End[0] set from storage kms:min_and_max Result.Min[0]
function kms:draw/line
data modify storage kms:draw_line Start[1] set from storage kms:min_and_max Result.Min[1]
data modify storage kms:draw_line End[1] set from storage kms:min_and_max Result.Min[1]
function kms:draw/line
data modify storage kms:draw_line Start[0] set from storage kms:min_and_max Result.Max[0]
data modify storage kms:draw_line End[0] set from storage kms:min_and_max Result.Max[0]
function kms:draw/line
