#include <stdio.h>
#include "fun.h"

int main(int argc, char* argv[]){
    if(argc>1){
        printf("%s",argv[1]);
    }
    char c[100] = "adam is waiting for answer";
    char a='c',b='h';

    removerng(c,a,b);
    printf("%c , %c , %s", a, b , c);


    return 0;
}