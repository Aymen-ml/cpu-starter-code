import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_invert8_basic(dut):
    dut.a.value = 0x00
    await Timer(1, unit="ns")
    assert int(dut.y.value) == 0xFF

    dut.a.value = 0xA5
    await Timer(1, unit="ns")
    assert int(dut.y.value) == 0x5A

    dut.a.value = 0xFF
    await Timer(1, unit="ns")
    assert int(dut.y.value) == 0x00
