precision mediump float;

void main() {

  //TODO: Replace this with a function that draws a checkerboard

  float tileSize = 16.0;

  vec2 ptile = step(0.5, fract(0.5 * gl_FragCoord.xy / tileSize));

  if (ptile.x == ptile.y) {
      gl_FragColor = vec4(1.0);
  } else {
      discard;
  }

}
