obj-m += nrf24.o

nrf24-objs := nrf24_if.o nrf24_hal.o nrf24_sysfs.o

CFLAGS_nrf24_if.o := -DDEBUG
CFLAGS_nrf24_hal.o := -DDEBUG
CFLAGS_nrf24_sysfs.o := -DDEBUG

KERNEL_DIR := /lib/modules/$(shell uname -r)/build

all:
	make -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean
