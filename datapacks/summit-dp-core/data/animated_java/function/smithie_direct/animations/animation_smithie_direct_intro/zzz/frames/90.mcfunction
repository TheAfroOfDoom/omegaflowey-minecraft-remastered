$data merge entity $(bone_eyes) {transformation: [-2.0179f,0.2196f,-0.2508f,10.5356f,0.2501f,1.8884f,-0.1146f,3.2046f,0.2354f,-0.1385f,-2.0282f,0.7661f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.0179f,0.2196f,-0.2508f,10.5905f,0.2501f,1.8884f,-0.1146f,3.6767f,0.2354f,-0.1385f,-2.0282f,0.7315f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,10.5301f,0f,0f,0f,4.0515f,0f,0f,0f,-0.187f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,10.069f,0f,0f,0f,0.0857f,0f,0f,0f,0.1039f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.0179f,0.2196f,-0.2508f,10.3709f,0.2501f,1.8884f,-0.1146f,2.6823f,0.2354f,-0.1385f,-2.0282f,-0.0866f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,10.069f,0f,0f,0f,0.0857f,0f,0f,0f,0.1039f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2.0179f,0.2196f,-0.2508f,10.2337f,0.2501f,1.8884f,-0.1146f,1.5021f,0.2354f,-0.1385f,-2.0282f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-2.0251f,0.158f,0.2389f,11.753f,0.2595f,0.0819f,1.8889f,1.9866f,0.1465f,2.0392f,-0.0929f,-0.2979f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-1.6148f,1.2323f,0.2389f,11.8244f,0.2624f,-0.0721f,1.8889f,1.8425f,1.2302f,1.6328f,-0.0929f,-0.599f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-1.6148f,1.2323f,0.2389f,11.4506f,0.2624f,-0.0721f,1.8889f,2.1442f,1.2302f,1.6328f,-0.0929f,-0.303f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.7493f,0.9432f,-0.4832f,8.471f,0.5482f,1.4926f,1.0553f,2.4255f,0.9029f,0.8421f,-1.6321f,0.2675f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-1.9739f,-0.2308f,-0.4832f,8.2761f,-0.407f,1.5371f,1.0553f,2.1646f,0.2566f,1.2077f,-1.6321f,0.2884f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-1.9739f,-0.2308f,-0.4832f,8.7092f,-0.407f,1.5371f,1.0553f,2.3983f,0.2566f,1.2077f,-1.6321f,0.0202f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,11.5595f,0f,0f,0f,2.0574f,0f,0f,0f,-0.3128f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,11.5595f,0f,0f,0f,2.0574f,0f,0f,0f,-0.3128f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,11.5595f,0f,0f,0f,2.0574f,0f,0f,0f,-0.3128f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
