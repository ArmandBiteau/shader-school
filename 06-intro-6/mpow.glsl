mat2 matrixPower(highp mat2 m, int n) {

    //Raise the matrix m to nth power

    // For example:
    //
    //  matrixPower(m, 2) = m * m
    //
    //
    //

    mat2 m2 = m * m;
    mat2 m4 = m2 * m2;
    mat2 m8 = m4 * m4;

    mat2 result = mat2(1.0);

    if(n >= 8) {
        n -= 8;
        result *= m8;
    }
    if(n >= 4) {
        n -= 4;
        result *= m4;
    }
    if(n >= 2) {
        n -= 2;
        result *= m2;
    }
    if(n >= 1) {
        result *= m;
    }

    return result;

}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)
