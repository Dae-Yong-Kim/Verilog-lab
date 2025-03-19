#include <stdio.h>


int main()
{
   int* ptr = 0x40000000;
   int data = 0;

    //Write Test
    printf("Start\r\n");

    while(1) {
        data = *(ptr + 1);
        *(ptr) = data;
    }

    return 0;
}
