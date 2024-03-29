precision mediump float;

attribute vec3 position, normal;
uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient, diffuse, specular, lightDirection;
uniform float shininess;

varying vec3 vNormal;
varying vec3 vPosition;

void main() {

    vec4 viewPosition = view * model * vec4(position, 1.0);
    vec4 viewNormal = vec4(normal, 0.0) * inverseModel * inverseView;

    gl_Position = projection * viewPosition;

    vNormal = viewNormal.xyz;
    vPosition = viewPosition.xyz;

}
