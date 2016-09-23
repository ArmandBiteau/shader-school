precision highp float;

attribute vec4 position;
attribute vec3 color;

varying vec3 vColor;

void main() {

    vColor = color;

    gl_Position = position;

}
