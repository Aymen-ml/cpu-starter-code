TOPLEVEL_LANG ?= verilog
SIM ?= icarus
MODULE ?= test_smoke
TOPLEVEL ?= tb
VERILOG_SOURCES := $(shell find ../design -name '*.v' | sort)
COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

# Workshop tips:
# - Run default starter tests: make -B
# - Run one specific test: make -B TESTCASE=test_smoke_reset_only
# - Enable template tests by removing skip=True in test_smoke.py

include $(shell cocotb-config --makefiles)/Makefile.sim
