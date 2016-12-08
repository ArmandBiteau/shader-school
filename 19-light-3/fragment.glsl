precision mediump float;

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient, diffuse, specular, lightDirection;
uniform float shininess;

varying vec3 vNormal;
varying vec3 vPosition;

float phongWeight(
    vec3 lightDirection,
    vec3 surfaceNormal,
    vec3 eyeDirection,
    float shininess
) {
    //First reflect light by surface normal
    vec3 rlight = reflect(lightDirection, surfaceNormal);

    //Next find the projected length of the reflected
    //light vector in the view direction
    float eyeLight = max(dot(rlight, eyeDirection), 0.0);

    //Finally exponentiate by the shininess factor
    return pow(eyeLight, shininess);
}

void main() {


    vec3 eyeDirection = normalize(vPosition);

    vec3 normal = normalize(vNormal);

    vec3 light = normalize(lightDirection);


    float lambert = dot(normal, light);

    float phong = phongWeight(light, normal, eyeDirection, shininess);

    vec3 color = ambient + diffuse * lambert + specular * phong;


    gl_FragColor = vec4(color, 1.0);

}
