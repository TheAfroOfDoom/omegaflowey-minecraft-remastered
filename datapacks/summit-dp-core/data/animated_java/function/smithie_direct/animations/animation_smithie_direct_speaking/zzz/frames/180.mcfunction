$data merge entity $(bone_eyes) {transformation: [-2f,0f,0f,-0.0008f,0f,1.9981f,0.0872f,2.4507f,0f,0.0872f,-1.9981f,0.7328f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2f,0.0016f,0f,0f,0.0016f,1.9981f,0.0872f,3.1267f,0.0001f,0.0872f,-1.9981f,0.7623f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,0f,0f,0f,0f,3.4379f,0f,0f,0f,-0.0999f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7581f,0f,0f,0f,-0.2831f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2f,0f,0f,0f,0f,1.9981f,0.0872f,1.9893f,0f,0.0872f,-1.9981f,-0.1632f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7372f,0f,0f,0f,0.1958f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9829f,-0.2611f,0.75f,0f,-0.2611f,-1.9829f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [1.8072f,0.7887f,-0.3347f,-1.4084f,0.253f,0.2553f,1.9674f,1.7062f,0.8185f,-1.8201f,0.1309f,1.2115f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [1.8602f,0.3628f,-0.4276f,-1.0645f,0.379f,0.1317f,1.9518f,1.6438f,0.6292f,-1.1519f,0.0885f,1.4242f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [1.8602f,0.5972f,-0.4276f,-1.6074f,0.379f,0.2168f,1.9518f,1.7842f,0.6292f,-1.8964f,0.0885f,1.3555f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
