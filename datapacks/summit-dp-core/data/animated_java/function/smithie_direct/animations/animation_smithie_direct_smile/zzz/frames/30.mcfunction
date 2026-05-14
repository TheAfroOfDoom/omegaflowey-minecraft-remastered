$data merge entity $(bone_eyes) {transformation: [-1.9838f,0.0088f,-0.2503f,0.1205f,0.0332f,0.3995f,0.0893f,2.4497f,0.252f,0.0169f,-1.9823f,0.7252f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9838f,0.0441f,-0.2503f,0.1343f,0.0332f,1.9977f,0.0893f,3.074f,0.252f,0.0844f,-1.9823f,0.7516f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,0.032f,0f,0f,0f,3.4377f,0f,0f,0f,-0.1019f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,-0.0607f,0f,0f,0f,-0.7576f,0f,0f,0f,-0.2793f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9838f,0.0441f,-0.2503f,0f,0.0332f,1.9977f,0.0893f,1.9893f,0.252f,0.0844f,-1.9823f,-0.1632f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_right/apply
