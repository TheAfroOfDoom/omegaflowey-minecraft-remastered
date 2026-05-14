data modify storage summit:temp rotation set value [0, 0, 0, 0]
$execute store result storage summit:temp rotation[0] float -0.000010 run data get storage summit:temp yawCos $(pitchSin)
$execute store result storage summit:temp rotation[1] float 0.00001 run data get storage summit:temp yawSin $(pitchCos)
$execute store result storage summit:temp rotation[2] float 0.00001 run data get storage summit:temp yawSinN $(pitchSin)
$execute store result storage summit:temp rotation[3] float -0.000010 run data get storage summit:temp yawCos $(pitchCos)
