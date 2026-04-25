# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Timer


# Workshop helper: read the PC nibble from the Tiny Tapeout debug bus.
def pc_from_debug(dut):
    return int(dut.uio_out.value) & 0x0F


async def settle():
    await Timer(5, unit="ns")


async def start_clock(dut):
    clock = Clock(dut.clk, 10, unit="ns")
    cocotb.start_soon(clock.start())
    await settle()


async def reset_dut(dut):
    //To do: Assert Reset
    await settle()


@cocotb.test()
async def test_smoke_reset_only(dut):
    await start_clock(dut)
    await reset_dut(dut)
    assert int(dut.uo_out.value) == 0
    assert pc_from_debug(dut) == 0


@cocotb.test(skip=True)
async def test_phase_toggle_template(dut):
    # TODO(student): check that fetch/exec alternate.
    pass


@cocotb.test(skip=True)
async def test_ldi_template(dut):
    # TODO(student): check LDI loads the operand into ACC.
    pass


@cocotb.test(skip=True)
async def test_memory_roundtrip_template(dut):
    # TODO(student): check STO then LDM using the same address.
    pass


@cocotb.test(skip=True)
async def test_add_sub_template(dut):
    # TODO(student): check ADD and SUB using one stored RAM operand.
    pass


@cocotb.test(skip=True)
async def test_jmpz_template(dut):
    # TODO(student): check JMPZ changes PC only when ACC is zero.
    pass


@cocotb.test(skip=True)
async def test_mini_program_template(dut):
    # TODO(student): write a short program and check the final ACC/PC.
    pass


@cocotb.test(skip=True)
async def test_control_decode_template(dut):
    # TODO(student): inspect control signals in RTL only if exposed.
    # GLS note: keep this skipped unless internal signals are visible.
    pass
