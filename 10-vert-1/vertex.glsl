precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //TODO: rotate position by theta radians about the origin

  vec2 p = mat2( cos(-theta), -sin(-theta),
                 sin(-theta),  cos(-theta) ) * position;

  gl_Position = vec4(p, 0.0, 1.0);

}
