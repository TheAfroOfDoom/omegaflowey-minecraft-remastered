$data merge entity $(bone_eyes) {transformation: [-1.2239f,-0.1396f,-1.5303f,21.1878f,-0.0522f,2.0664f,-0.1326f,4.5631f,1.5354f,-0.0403f,-1.2244f,0.5004f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.2239f,-0.1396f,-1.5303f,21.1529f,-0.0522f,2.0664f,-0.1326f,5.0797f,1.5354f,-0.0403f,-1.2244f,0.4903f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,20.452f,0f,0f,0f,5.4866f,0f,0f,0f,-0.0545f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,20.7452f,0f,0f,0f,1.1472f,0f,0f,0f,0.0303f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.2239f,-0.1396f,-1.5303f,20.5532f,-0.0522f,2.0664f,-0.1326f,3.9885f,1.5354f,-0.0403f,-1.2244f,-0.0252f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,20.7452f,0f,0f,0f,1.1472f,0f,0f,0f,0.0303f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.2239f,-0.1396f,-1.5303f,20.6405f,-0.0522f,2.0664f,-0.1326f,2.697f,1.5354f,-0.0403f,-1.2244f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-1.0302f,1.335f,1.0078f,21.4969f,1.6993f,0.4767f,1.0842f,3.3129f,0.4663f,1.3658f,-1.3324f,-1.0727f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.1683f,1.6779f,1.0078f,21.2977f,1.6943f,-0.4942f,1.0842f,3.0797f,1.1181f,0.9125f,-1.3324f,-1.2147f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.1683f,1.6779f,1.0078f,21.3816f,1.6943f,-0.4942f,1.0842f,3.6388f,1.1181f,0.9125f,-1.3324f,-1.1017f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0.5847f,1.5105f,-1.1116f,19.9983f,-1.344f,1.2305f,0.9848f,3.3473f,1.3787f,0.443f,1.327f,0.8815f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.0291f,1.6195f,-1.1116f,19.9123f,-1.7092f,0.6319f,0.9848f,3.0129f,1.1094f,0.9308f,1.327f,0.85f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.0291f,1.6195f,-1.1116f,19.7806f,-1.7092f,0.6319f,0.9848f,3.5632f,1.1094f,0.9308f,1.327f,0.7385f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,21.2705f,0f,0f,0f,3.5038f,0f,0f,0f,-1.0382f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,21.2705f,0f,0f,0f,3.5038f,0f,0f,0f,-1.0382f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,21.2705f,0f,0f,0f,3.5038f,0f,0f,0f,-1.0382f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_right/apply
