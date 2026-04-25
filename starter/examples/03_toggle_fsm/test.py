import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Timer


@cocotb.test()
async def test_toggle_fsm(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.en.value = 1
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 2)
    assert int(dut.phase.value) == 1

    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 1)
    await Timer(1, unit="ns")
    first = int(dut.phase.value)

    await ClockCycles(dut.clk, 1)
    await Timer(1, unit="ns")
    second = int(dut.phase.value)
    assert second != first

    dut.en.value = 0
    hold = int(dut.phase.value)
    await ClockCycles(dut.clk, 2)
    await Timer(1, unit="ns")
    assert int(dut.phase.value) == hold
