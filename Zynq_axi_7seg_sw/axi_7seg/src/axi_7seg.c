#include <stdio.h>


int main()
{
   int* ptr = 0x40000000;
   int data = 0, data_1 = 0, data_10 = 0;

    //Write Test
    printf("Start\r\n");

    while(1) {
        data = *(ptr + 1);
        data_1 = data % 10;
        data_10 = data / 10;
        data = (data_10 << 4) | data_1;
        *(ptr) = data;
    }

    return 0;
}