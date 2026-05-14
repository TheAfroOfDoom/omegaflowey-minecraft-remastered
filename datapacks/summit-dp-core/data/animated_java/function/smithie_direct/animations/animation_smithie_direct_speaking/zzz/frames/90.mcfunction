$data merge entity $(bone_eyes) {transformation: [-1.7721f,-0.0548f,0.3109f,-0.1579f,-0.0145f,1.7849f,0.2319f,2.3434f,-0.3153f,0.2257f,-1.7577f,0.7664f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.7726f,-0.0377f,0.3109f,-0.1703f,0.0027f,1.785f,0.2319f,3.0128f,-0.3131f,0.2288f,-1.7577f,0.8525f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0397f,0f,0f,0f,3.2928f,0f,0f,0f,0.1061f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0754f,0f,0f,0f,-0.4556f,0f,0f,0f,-0.368f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.7721f,-0.0548f,0.3109f,0f,-0.0145f,1.7849f,0.2319f,1.9987f,-0.3153f,0.2257f,-1.7577f,-0.0576f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7484f,0f,0f,0f,0.0691f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9979f,-0.0921f,0.75f,0f,-0.0921f,-1.9979f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.3123f,1.1481f,-0.9796f,-1.3025f,0.7288f,1.6188f,0.921f,1.9676f,1.3216f,0.2473f,-1.4806f,1.3755f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.0715f,0.6566f,-0.3186f,-1.3438f,1.9259f,0.051f,0.5171f,2.2927f,0.5346f,-0.096f,-1.9055f,1.6018f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.0715f,1.9732f,-0.3186f,-1.5029f,1.9259f,0.1533f,0.5171f,1.8652f,0.5346f,-0.2883f,-1.9055f,1.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_left/apply
