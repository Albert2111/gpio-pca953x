ifneq ($(KERNELRELEASE),)
	obj-m := gpio-pca953x.o
else
	PWD := $(shell pwd)
	KDIR := /lib/modules/`uname -r`/build
all:
	make -C $(KDIR) M=$(PWD)
clean:
	rm -rf *.o *.ko *.mod.c *.symvers *.c~ *~
endif
