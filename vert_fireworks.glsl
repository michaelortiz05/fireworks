#version 300 es
in vec4 position;
// in vec3 normal;
// out vec3 fnormal;
uniform mat4 p;
uniform mat4 mv;
// uniform float radius;
uniform float pointSize;
void main() {
    gl_Position = p * mv * vec4(position.x, position.y, position.z, position.a);
    gl_PointSize = pointSize;
}