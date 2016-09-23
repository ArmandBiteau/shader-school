highp mat4 translate(highp vec3 p) {

  //TODO: Construct a matrix, m, which translates all points so that p is at the origin.

  mat4 m = mat4(1, 0,       0,       0,
                0,       1, 0,       0,
                0,       0,       1, 0,
                -p.x,       -p.y,       -p.z,       1.0);

  return m;
}

//Do not remove this line
#pragma glslify: export(translate)
