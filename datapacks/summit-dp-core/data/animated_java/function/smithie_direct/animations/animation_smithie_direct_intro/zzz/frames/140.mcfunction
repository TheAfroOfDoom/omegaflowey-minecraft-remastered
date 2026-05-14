$data merge entity $(bone_eyes) {transformation: [-1.1248f,-0.016f,-1.6996f,19.4557f,0.0273f,1.9233f,-0.0328f,4.0292f,1.6994f,-0.0424f,-1.1243f,0.4548f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.1248f,-0.016f,-1.6996f,19.4517f,0.0273f,1.9233f,-0.0328f,4.51f,1.6994f,-0.0424f,-1.1243f,0.4442f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,18.7045f,0f,0f,0f,4.9284f,0f,0f,0f,-0.0572f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,18.7381f,0f,0f,0f,0.8894f,0f,0f,0f,0.0318f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.1248f,-0.016f,-1.6996f,18.7161f,0.0273f,1.9233f,-0.0328f,3.534f,1.6994f,-0.0424f,-1.1243f,-0.0265f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,18.7381f,0f,0f,0f,0.8894f,0f,0f,0f,0.0318f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.1248f,-0.016f,-1.6996f,18.7261f,0.0273f,1.9233f,-0.0328f,2.3319f,1.6994f,-0.0424f,-1.1243f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-0.8508f,1.5613f,0.9961f,19.2027f,1.6627f,0.3196f,0.9135f,2.852f,0.5767f,1.2651f,-1.4903f,-1.4131f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [0.1122f,1.7745f,0.9961f,18.9601f,1.5772f,-0.6157f,0.9135f,2.6554f,1.1622f,0.7631f,-1.4903f,-1.5368f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [0.1122f,1.7745f,0.9961f,19.1127f,1.5772f,-0.6157f,0.9135f,3.1639f,1.1622f,0.7631f,-1.4903f,-1.4325f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0.6838f,1.6558f,-0.9719f,18.5278f,-1.276f,1.0814f,0.9505f,2.9856f,1.3638f,0.3073f,1.4831f,1.1962f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [0.0725f,1.79f,-0.9719f,18.4297f,-1.5701f,0.5765f,0.9505f,2.6758f,1.1749f,0.7577f,1.4831f,1.1794f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [0.0725f,1.79f,-0.9719f,18.2901f,-1.5701f,0.5765f,0.9505f,3.1872f,1.1749f,0.7577f,1.4831f,1.071f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,19.332f,0f,0f,0f,3.0412f,0f,0f,0f,-1.1354f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,19.332f,0f,0f,0f,3.0412f,0f,0f,0f,-1.1354f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,19.332f,0f,0f,0f,3.0412f,0f,0f,0f,-1.1354f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
