# Makefile for HD kernel

ifneq ($(KERNELRELEASE),)
obj-m	:= frandom.o

else
KDIR := ~/HD-ION
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
endif

