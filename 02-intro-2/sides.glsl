void sideLengths(
  highp float hypotenuse,
  highp float angleInDegrees,
  out highp float opposite,
  out highp float adjacent) {


  //TODO: Calculate side lengths here
  float theta = radians(angleInDegrees);
  opposite = hypotenuse * sin(theta);
  adjacent = hypotenuse * cos(theta);

}

//Do not change this line
#pragma glslify: export(sideLengths)
