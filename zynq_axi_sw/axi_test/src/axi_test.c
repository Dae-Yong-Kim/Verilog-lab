#include <stdio.h>


int main()
{

   int* ptr = 0x40000000;

    //Write Test
    printf("Start axi_test\r\n");  
    printf("AXI Write\r\n");  
    for(int i = 0; i < 4; i++)
    {     
        *(ptr+i) = i;
    }
 
    for(int i = 0; i < 4; i++)
    {     
        printf("Write data is : %d, %p\r\n", *(ptr+i), ptr+i); 
    }
         

    //Read Test
    printf("AXI Read\r\n"); 
    for(int i = 0; i < 4; i++)
    {
        printf("Read data is : %d, %p\r\n",*(ptr+i), ptr+i);  
    }


    return 0;
}
