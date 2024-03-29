highp mat4 transpose(in highp mat4 inMatrix) {
    highp vec4 i0 = inMatrix[0];
    highp vec4 i1 = inMatrix[1];
    highp vec4 i2 = inMatrix[2];
    highp vec4 i3 = inMatrix[3];

    highp mat4 outMatrix = mat4(
                 vec4(i0.x, i1.x, i2.x, i3.x),
                 vec4(i0.y, i1.y, i2.y, i3.y),
                 vec4(i0.z, i1.z, i2.z, i3.z),
                 vec4(i0.w, i1.w, i2.w, i3.w)
                 );

    return outMatrix;
}

highp mat4 reflection(highp vec3 n) {

  //TODO: Return a matrix that reflects all points about the plane passing through the origin with normal n

  // vec3 reflectPoint(vec3 p, vec3 n) {
  //   return p    - 2.0 * dot(n, p)   *    n / dot(n, n);
  // }


  n = normalize(n);

  return transpose(mat4(1.0 - 2.0*n.x*n.x, 0,                 0,                 0,
                        0,                 1.0 - 2.0*n.y*n.y, 0,                 0,
                        0,                 0,                 1.0 - 2.0*n.z*n.z, 0,
                        0,0,0,1));

}

#pragma glslify: export(reflection)
