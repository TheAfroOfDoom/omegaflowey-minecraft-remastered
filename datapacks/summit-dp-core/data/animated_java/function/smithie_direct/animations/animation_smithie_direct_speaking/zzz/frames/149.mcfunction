$data merge entity $(bone_eyes) {transformation: [-1.7721f,-0.0548f,0.3109f,-0.1532f,-0.0045f,1.7769f,0.2875f,2.3183f,-0.3156f,0.2823f,-1.7495f,0.8174f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.7723f,-0.0475f,0.3109f,-0.1703f,0.0028f,1.7769f,0.2875f,2.9846f,-0.3145f,0.2836f,-1.7495f,0.9239f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0397f,0f,0f,0f,3.2881f,0f,0f,0f,0.1867f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0754f,0f,0f,0f,-0.4433f,0f,0f,0f,-0.4061f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.7721f,-0.0548f,0.3109f,0f,-0.0045f,1.7769f,0.2875f,1.9999f,-0.3156f,0.2823f,-1.7495f,-0.0179f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7498f,0f,0f,0f,0.0215f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9998f,-0.0287f,0.75f,0f,-0.0287f,-1.9998f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.7379f,1.8017f,-0.4575f,-1.3039f,1.6073f,0.8657f,0.8167f,1.9676f,0.9338f,-0.0663f,-1.7674f,1.3755f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.0715f,0.7093f,-0.3186f,-1.3507f,1.9259f,0.0551f,0.5171f,2.2923f,0.5346f,-0.1036f,-1.9055f,1.6026f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.0715f,1.9732f,-0.3186f,-1.5043f,1.9259f,0.1533f,0.5171f,1.8652f,0.5346f,-0.2883f,-1.9055f,1.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_left/apply
