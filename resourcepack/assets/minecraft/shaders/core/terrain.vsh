#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:emissive_utils.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec4 lightColor;
out vec4 faceLightColor;
out vec2 texCoord0;

void main() {
    vec3 pos = Position + ModelOffset;
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);
    lightColor = minecraft_sample_lightmap(Sampler2, UV2);
    faceLightColor = get_block_face_lighting(Normal, get_dimension(minecraft_sample_lightmap(Sampler2, ivec2(0.0, 0.0))));
    vertexColor = Color / faceLightColor;
    texCoord0 = UV0;
}
