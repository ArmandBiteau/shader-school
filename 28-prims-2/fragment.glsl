precision highp float;

uniform vec3 frontColor, backColor;

void main() {

    vec3 color = vec3(0.0);

    if(gl_FrontFacing){
        color = frontColor;
    } else {
        color = backColor;
    }

  gl_FragColor = vec4(color, 1.0);

}
