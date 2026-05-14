$data merge entity $(bone_eyes) {transformation: [-2.1493f,-0.0408f,0.0862f,25.1783f,-0.0067f,1.5068f,1.0049f,2.7044f,-0.101f,0.7792f,-1.9005f,2.0263f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.1493f,-0.0408f,0.0862f,25.1681f,-0.0067f,1.5068f,1.0049f,3.0811f,-0.101f,0.7792f,-1.9005f,2.2211f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,25.1966f,0f,0f,0f,3.8598f,0f,0f,0f,1.565f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,25.2823f,0f,0f,0f,0.6955f,0f,0f,0f,-0.0713f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.1493f,-0.0408f,0.0862f,25.2262f,-0.0067f,1.5068f,1.0049f,2.7674f,-0.101f,0.7792f,-1.9005f,1.0001f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,25.2823f,0f,0f,0f,0.6955f,0f,0f,0f,-0.0713f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2.1493f,-0.0408f,0.0862f,25.2517f,-0.0067f,1.5068f,1.0049f,1.8256f,-0.101f,0.7792f,-1.9005f,0.5131f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-1.7651f,-1.1157f,-0.5179f,27.0166f,0.2226f,-1.0611f,1.4509f,1.9797f,-1.1833f,1.4959f,0.7689f,0.7486f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-2.0875f,-0.0495f,-0.5179f,27.3146f,-0.3546f,-1.0245f,1.4509f,2.0294f,-0.2459f,1.8914f,0.7689f,0.554f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-2.0875f,-0.0495f,-0.5179f,26.728f,-0.3546f,-1.0245f,1.4509f,2.1222f,-0.2459f,1.8914f,0.7689f,0.5886f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.9159f,0.8778f,0.4328f,23.4713f,-0.1798f,-1.0645f,1.4542f,1.9672f,0.9266f,1.6457f,0.8138f,0.5811f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-2.1039f,-0.1218f,0.4328f,23.1927f,0.3397f,-1.0248f,1.4542f,2.0148f,0.0479f,1.888f,0.8138f,0.3592f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-2.1039f,-0.1218f,0.4328f,23.7728f,0.3397f,-1.0248f,1.4542f,2.1117f,0.0479f,1.888f,0.8138f,0.449f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,26.5839f,0f,0f,0f,2.4533f,0f,0f,0f,0.7629f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,26.5839f,0f,0f,0f,2.4533f,0f,0f,0f,0.7629f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,26.5839f,0f,0f,0f,2.4533f,0f,0f,0f,0.7629f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/blinking/apply
