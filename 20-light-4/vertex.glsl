precision mediump float;

attribute vec3 position;
attribute vec3 normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 lightPosition;

varying vec3 vNormal;
varying vec3 vPosition;
varying vec3 vLightDirection;


void main() {

    vec4 viewPosition = view * model * vec4(position, 1.0);
    vec4 viewNormal = vec4(normal, 0.0) * inverseModel * inverseView;

    vec4 viewLight = view * vec4(lightPosition, 1.0);

    gl_Position = projection * viewPosition;

    vNormal = viewNormal.xyz;
    vPosition = viewPosition.xyz;

    vLightDirection = viewLight.xyz - viewPosition.xyz;

}
