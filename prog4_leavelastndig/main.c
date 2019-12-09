#include <stdio.h>

#include "fun.h"

int main( int argc, char* argv[]){
    char napis[200] = "Napis kon124trolny, z5123 ktorego54 ma pozostac ostatnie124 n liczb";
    //printf("%s", napis);
    int n = 5;
    leavelastndig(napis, 1);
    printf("%s\n%d\n", napis, n);

    return 0;
}