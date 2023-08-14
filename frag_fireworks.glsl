#version 300 es
precision highp float;
// uniform vec3 lightdir;
// uniform vec3 lightcolor;
// uniform vec3 lightdir2;
// uniform vec3 lightcolor2;
out vec4 fragColor;
// in vec3 fnormal;
uniform vec4 color;
void main() {
    // vec3 n = normalize(fnormal);
    // float lambert = max(dot(lightdir, n), 0.0);
    // float lambert2 = max(dot(lightdir2, n), 0.0);
    float r = length(gl_PointCoord * 2.0 - vec2(1,1));
    if (r > 1.0) discard;
    float distance = length(gl_PointCoord * 2.0 - 1.0);
    float alphaMultiplier = 1.0 - mix(0.0, 0.4, distance);
    if (color.a <= 0.0) discard;
    fragColor = vec4(color.rgb, color.a) * alphaMultiplier;
}