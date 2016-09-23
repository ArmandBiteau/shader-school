precision mediump float;

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

vec3 reflectedLight(
  vec3 normal,
  vec3 lightDirection,
  vec3 ambient,
  vec3 diffuse
) {
  float brightness = dot(normalize(normal), normalize(lightDirection));
  return ambient + diffuse * max(brightness, 0.0);
}

void main() {

    vec3 color = reflectedLight(vNormal, lightDirection, ambient, diffuse);

    gl_FragColor = vec4(color,1.0);
}
