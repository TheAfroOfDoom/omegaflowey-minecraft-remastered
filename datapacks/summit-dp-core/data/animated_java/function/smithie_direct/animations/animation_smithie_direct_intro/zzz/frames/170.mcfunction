$data merge entity $(bone_eyes) {transformation: [-1.8173f,0.0744f,-0.6397f,25.35f,0.062f,2.1433f,0.018f,4.3887f,0.6399f,0.0054f,-1.8184f,0.7817f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.8173f,0.0744f,-0.6397f,25.3686f,0.062f,2.1433f,0.018f,4.9245f,0.6399f,0.0054f,-1.8184f,0.783f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,25.1055f,0f,0f,0f,5.4146f,0f,0f,0f,-0.0114f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,24.9492f,0f,0f,0f,0.9137f,0f,0f,0f,-0.0226f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.8173f,0.0744f,-0.6397f,25.0515f,0.062f,2.1433f,0.018f,3.8607f,0.6399f,0.0054f,-1.8184f,-0.0152f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,24.9492f,0f,0f,0f,0.9137f,0f,0f,0f,-0.0226f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.8173f,0.0744f,-0.6397f,25.005f,0.062f,2.1433f,0.018f,2.5212f,0.6399f,0.0054f,-1.8184f,-0.0186f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-0.9667f,-0.1407f,1.6622f,26.2812f,1.3197f,1.4245f,0.9094f,3.0233f,-1.1587f,1.4385f,-0.5517f,-0.3447f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.8992f,0.3818f,1.6622f,26.2539f,1.8676f,0.5319f,0.9094f,2.6832f,-0.243f,1.8311f,-0.5517f,-0.4515f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.8992f,0.3818f,1.6622f,26.2369f,1.8676f,0.5319f,0.9094f,3.2638f,-0.243f,1.8311f,-0.5517f,-0.5812f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.3891f,1.0263f,-1.5851f,23.8078f,-1.6054f,0.9945f,1.0157f,3.063f,1.2147f,1.375f,0.5917f,0.5443f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.8027f,0.7486f,-1.5851f,23.7363f,-1.8797f,0.1823f,1.0157f,2.7475f,0.4816f,1.7703f,0.5917f,0.4015f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.8027f,0.7486f,-1.5851f,23.7389f,-1.8797f,0.1823f,1.0157f,3.3444f,0.4816f,1.7703f,0.5917f,0.3551f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,26.1332f,0f,0f,0f,3.2914f,0f,0f,0f,-0.5154f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,26.1332f,0f,0f,0f,3.2914f,0f,0f,0f,-0.5154f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,26.1331f,0f,0f,0f,3.2914f,0f,0f,0f,-0.5154f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
