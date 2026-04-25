TOPLEVEL_LANG ?= verilog
SIM ?= icarus
MODULE ?= test
TOPLEVEL ?= tb
VERILOG_SOURCES := $(PWD)/design.v $(PWD)/tb.v
COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

include $(shell cocotb-config --makefiles)/Makefile.sim
