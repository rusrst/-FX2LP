D:
cd d:\sdcc\bin  
sdcc -mmcs51 --model-small -c D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c -o D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\
sdcc -mmcs51 --model-small -c D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c -o D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\
sdcc -mmcs51 --model-small -c D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\table.c -o D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\
sdcc -mmcs51 --model-small  -Wl -bUSB_INTERRUPTS=0x2000 -Wl -bTABLE=0x1000 D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\main.rel D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\interrupts.rel D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\table.rel -o D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\out\first_step.hex
pause