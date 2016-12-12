precision mediump float;

uniform sampler2D state[2];       //State buffer
uniform vec2 screenSize;          //Size of screen buffer
uniform vec2 mousePosition;       //Position of mouse
uniform bvec3 mouseDown;        //Test if mouse left, right, middle is down
uniform float time;               //Time since start

void main() {

    vec4 paintColor = vec4(0, 0, 0, 0);

    // left click
    if (mouseDown.x) {

        float r = exp2(-0.4 * distance(gl_FragCoord.xy, mousePosition));
        float g = exp2(-0.2 * distance(gl_FragCoord.xy, mousePosition));
        float b = exp2(-0.3 * distance(gl_FragCoord.xy, mousePosition));

        // float a = sin(time * 1.0);

        paintColor = vec4(r, g, b, 1.0);

    }

    // right click
    if (mouseDown.y) {
        float g = exp2(-0.2 * distance(gl_FragCoord.xy, mousePosition));
        paintColor.g = g;
    }

    // middle click
    if (mouseDown.z) {
        float b = exp2(-0.6 * distance(gl_FragCoord.xy, mousePosition));
        paintColor.b = b;
    }

    //Write out texture
    vec2 texCoord = gl_FragCoord.xy / screenSize;

    gl_FragColor = texture2D(state[0], texCoord) + vec4(paintColor);

}
