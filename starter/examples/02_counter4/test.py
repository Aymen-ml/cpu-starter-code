import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Timer


@cocotb.test()
async def test_counter4(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.en.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 2)
    assert int(dut.count.value) == 0

    dut.rst_n.value = 1
    dut.en.value = 1
    await ClockCycles(dut.clk, 3)
    await Timer(1, unit="ns")
    assert int(dut.count.value) == 3

    dut.en.value = 0
    hold = int(dut.count.value)
    await ClockCycles(dut.clk, 2)
    await Timer(1, unit="ns")
    assert int(dut.count.value) == hold
