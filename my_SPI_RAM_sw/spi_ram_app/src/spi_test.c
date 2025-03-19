/********************************************************************
*   Copyright (C) 2024 WeDu Solution Co., Ltd. All Right Reserved
*   SPDX-License-Identifier: MIT
********************************************************************/

/*******************************************************************/
/**
*
* @file      uart_test.app
*   this test the uart 
* @note
* MODIFICATION HISTORY:
* <pre>
* 1.00a  lebits 12/30/2024  First Release
* <pre>
********************************************************************/

/************************** Include Files **************************/
#include "xparameters.h"
#include "xil_types.h"
#include "xuartps.h"
#include "xil_printf.h"

/*********************** Constant Definitions ***********************/
#define	XUARTPS_BASEADDRESS	XPAR_XUARTPS_0_BASEADDR
#define AXI_BASEADDRESS     0x40000000

#define TEST_BUFFER_SIZE    10
/*************************** Type Definitions ***********************/

/************** Macros (Inline Functions) Definitions ***************/

/********************* Function Prototypes **************************/

/********************* Variable Definitions *************************/

XUartPs Uart_PS;		/* Instance of the UART Device */


//static u8 SendBuffer[TEST_BUFFER_SIZE];     //buffer for transmitting data
//static u8 RecvBuffer[TEST_BUFFER_SIZE];
/*****************************************************************************/
/**
*
* Main function.
*
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE
*
* @note		None
*
******************************************************************************/

int main(void) {

 	int Status;
	XUartPs_Config *Config;
    u32 *ptr;
    int spi_mode_status = 0;
    char spi_mode_data;
    int spi_address_status = 0;
    char spi_address_data, temp_address_data;
    int spi_data_status = 0;
    char spi_data_data, temp_data_data;
    int wr_data, rd_data, cnt = 0;

	/*
	 * Initialize the UART driver so that it's ready to use.
	 * Look up the configuration in the config table, then initialize it.
	 */
	Config = XUartPs_LookupConfig(XUARTPS_BASEADDRESS);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    xil_printf("\n\r==== SPI Test started ===\n\r");

    ptr = (u32 *)AXI_BASEADDRESS;

    while(1) {
        xil_printf("\n\rPlease Enter SPI Mode (1: Write, 2: Read) :\n\r");
        
        // UART TX
        spi_mode_status = 0;
        while(spi_mode_status == 0) {
            spi_mode_status = XUartPs_Recv(&Uart_PS, &spi_mode_data, 1);
        }
        
        wr_data = spi_mode_data;
        temp_address_data = 0;
        temp_data_data = 0;
        spi_address_status = 0;
        spi_data_status = 0;
        rd_data = 0;
        cnt = 0;

        switch (spi_mode_data) {
            case '1':
                printf("\n\r\n\r=== You selected Write ===\n\r");

                printf("\n\rAddress (Enter only 0 or 1 7 times): \n\r");
                for(int i = 0; i < 7; i++) {
                    spi_address_status = XUartPs_Recv(&Uart_PS, &spi_address_data, 1);
                    if(spi_address_status && ((spi_address_data == '0') || (spi_address_data == '1'))) {
                        wr_data <<= 1;
                        temp_address_data <<= 1;
                        wr_data |= (spi_address_data - '0');
                        temp_address_data |= (spi_address_data - '0');
                    }
                    else {
                        i--;
                    }
                }

                printf("\n\rData (Enter only one character): \n\r");
                while(spi_data_status == 0) {
                    spi_data_status = XUartPs_Recv(&Uart_PS, &spi_data_data, 1);
                }
                wr_data <<= 8;
                wr_data |= spi_data_data;
                temp_data_data = spi_data_data;

                printf("\n\rYou write %c at %d\r\n", temp_data_data, temp_address_data);

                *(ptr) = wr_data;

                break;
            case '2':
                printf("\n\r\n\r=== You selected Read ===\n\r");

                printf("\n\rAddress (Enter only 0 or 1 7 times): \n\r");
                for(int i = 0; i < 7; i++) {
                    spi_address_status = XUartPs_Recv(&Uart_PS, &spi_address_data, 1);
                    if(spi_address_status && ((spi_address_data == '0') || (spi_address_data == '1'))) {
                        wr_data <<= 1;
                        temp_address_data <<= 1;
                        wr_data |= (spi_address_data - '0');
                        temp_address_data |= (spi_address_data - '0');
                    }
                    else {
                        i--;
                    }
                }
                wr_data <<= 8;

                *(ptr) = wr_data;

                while((rd_data == 0) && (cnt < 5000)) {
                    rd_data = *(ptr + 1);
                    cnt++;
                }

                printf("\n\rYou read %c at %d\r\n", rd_data, temp_address_data);

                break;
        }
    }

	return XST_SUCCESS;

}

// int main(void) {

//  	int Status;
// 	XUartPs_Config *Config;
// 	unsigned int ReceivedCount;
//     char uart_tx_data;
//     char uart_rx_data;
//     u32 *ptr;
//     int uart_tx_status;
//     int uart_rx_status = 0;   
//     int st = 1; 

// 	/*
// 	 * Initialize the UART driver so that it's ready to use.
// 	 * Look up the configuration in the config table, then initialize it.
// 	 */
// 	Config = XUartPs_LookupConfig(XUARTPS_BASEADDRESS);
// 	if (NULL == Config) {
// 		return XST_FAILURE;
// 	}

// 	Status = XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress);
// 	if (Status != XST_SUCCESS) {
// 		return XST_FAILURE;
// 	}

//     xil_printf("\n\r==== UART Test started ===\n\r");

//     ReceivedCount = 0;
//     ptr = (u32 *)AXI_BASEADDRESS;

//     while(1) {
//         if (st != 0) {
//             xil_printf("Please Enter UART TX Data :");
//             st = 0;
//         }
        
//         // UART TX
//         uart_tx_status = 0;
//         while((uart_tx_status == 0) && (uart_rx_status == 0)){
//             uart_tx_status = *ptr;
//             uart_tx_status = (uart_tx_status >> 4) & (int) 1;
//             uart_rx_status = *(ptr + 3);
//         }
        
//         if (uart_tx_status != 0) {
//             ReceivedCount = XUartPs_Recv(&Uart_PS, &uart_tx_data, 1);
//             if (ReceivedCount == 1) {
//                 xil_printf("\n\r Received Data (from Zynq) %c\n\r",uart_tx_data);

//                 *(ptr) = 0x01;
//                 *(ptr+1) = uart_tx_data;
//                 *(ptr) = 0x00;

//                 ReceivedCount = 0;
//                 st = 1;
//             }
//         }

//         if (uart_rx_status != 0) {
//             *(ptr + 3) = 0x00;
            
//             uart_rx_status = 0;
//             uart_rx_data = *(ptr + 2);
            
//             *(ptr) = *(ptr) & ~((int) 32);
//             st = 1;

//             XUartPs_Send(&Uart_PS, &uart_rx_data, 1);
            
//             xil_printf("\n\r Received Data (from PL) %c\n\r",uart_rx_data);
//         }
        
//         if(uart_tx_data == 0x0d)
//             break;
//     }


//     xil_printf("==== UART Test Fnished ===\n\r");

// 	return XST_SUCCESS;

// }
