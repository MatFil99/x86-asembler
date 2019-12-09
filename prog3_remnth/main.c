#include <stdio.h>

#include "fun.h"

int main(int argc, char* argv[]){
    if( argc<2){
       // puts("Brak argumentu programu!\n");
    //    return 0;
    }

    int a = 10;
    char napis[100] = "Grenlandia - najwieksza wyspa na swiecie (chyba)\n";

    printf("%s", napis);
    remnth(napis, a);
    printf("%s", napis);



    return 0;
}