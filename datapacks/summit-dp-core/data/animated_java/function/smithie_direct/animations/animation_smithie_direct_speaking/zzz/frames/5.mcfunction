$data merge entity $(bone_eyes) {transformation: [-2.0957f,-0.1126f,-0.2248f,0.1322f,-0.1029f,1.9922f,-0.1385f,2.5509f,0.2448f,-0.1264f,-1.9825f,0.6646f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.0913f,-0.1713f,-0.2248f,0.0421f,-0.1652f,1.9884f,-0.1385f,3.0459f,0.2486f,-0.1195f,-1.9825f,0.6403f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0816f,0f,0f,0f,3.4335f,0f,0f,0f,-0.2555f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.1548f,0f,0f,0f,-0.75f,0f,0f,0f,0.0099f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9841f,-0.1126f,-0.2248f,0f,-0.0974f,1.9922f,-0.1385f,1.9892f,0.2318f,-0.1264f,-1.9825f,-0.1639f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7371f,0f,0f,0f,0.1967f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9827f,-0.2622f,0.75f,0f,-0.2622f,-1.9827f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [1.0816f,0.8076f,-1.4758f,-1.1635f,-0.5003f,1.8295f,0.6345f,1.5447f,1.6062f,0.026f,1.1914f,0.6645f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.0117f,1.3498f,-1.4758f,-1.1999f,-1.7712f,0.6783f,0.6345f,1.2198f,0.9288f,1.3107f,1.1914f,0.5827f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.0117f,1.3498f,-1.4758f,-1.3809f,-1.7712f,0.6783f,0.6345f,1.7422f,0.9288f,1.3107f,1.1914f,0.5f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/thinking/apply
