precision mediump float;

attribute vec3 position;
attribute vec3 normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 lightDirection;

varying vec3 vNormal;

void main() {

  vec4 worldNormal = vec4(normal, 0.0) * inverseModel * inverseView;
  vNormal = worldNormal.xyz;

  gl_Position = projection * view * model * vec4(position, 1.0);

}
