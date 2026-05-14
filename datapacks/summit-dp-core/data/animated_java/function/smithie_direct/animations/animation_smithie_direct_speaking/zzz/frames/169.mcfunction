$data merge entity $(bone_eyes) {transformation: [-1.9971f,-0.0165f,0.1065f,-0.0535f,-0.0105f,1.7547f,0.1548f,2.4747f,-0.1076f,0.1356f,-1.9912f,0.7921f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9971f,-0.0171f,0.1065f,-0.0595f,-0.0066f,2.1934f,0.1548f,3.294f,-0.1073f,0.1696f,-1.9912f,0.8555f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.015f,0f,0f,0f,3.5843f,0f,0f,0f,0.0016f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0284f,0f,0f,0f,-1.0218f,0f,0f,0f,-0.3543f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9971f,-0.0207f,0.1065f,0f,-0.0105f,2.1934f,0.1548f,1.9941f,-0.1076f,0.1694f,-1.9912f,-0.1213f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7429f,0f,0f,0f,0.1455f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9906f,-0.1941f,0.75f,0f,-0.1941f,-1.9906f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.7259f,1.8359f,-0.3204f,-1.4505f,1.8634f,0.7202f,-0.0948f,2.0423f,0.0283f,-0.3329f,-1.9719f,1.3344f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.3869f,0.7983f,-0.2524f,-1.5702f,1.9506f,0.145f,-0.2654f,2.4131f,-0.2137f,-0.122f,-1.9662f,1.4268f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.3869f,1.9459f,-0.2524f,-1.6245f,1.9506f,0.3534f,-0.2654f,1.8706f,-0.2137f,-0.2975f,-1.9662f,1.2527f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_right/apply
