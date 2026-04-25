# Workshop Testbench Starter

This folder contains starter Cocotb code for workshop verification.

## Files

- `tb.v`: minimal Verilog testbench wrapper for the Tiny Tapeout top module.
- `Makefile`: Cocotb simulation entrypoint.
- `test_smoke.py`: reusable helpers + staged test templates.

## What Students Get

The starter test file already provides:

- clock and reset helpers
- instruction packing helper
- debug-bus helpers for PC and fetch phase
- GLS-safe hierarchy fallback helper
- GLS-safe settle helper for gate-level simulation timing
- skipped template tests with TODO comments

## Quick Start

1. Install Python deps in your environment (at minimum `cocotb`).
2. Run starter tests:

```sh
cd starter/tests
make -B
```

3. Run a single test:

```sh
make -B TESTCASE=test_smoke_reset_only
```

To enable a template test, remove `skip=True` from the test decorator, then implement the TODOs inside that test.

If you are running gate-level simulation, keep the `settle()` helper in place and use `_cpu(dut)` instead of directly assuming RTL-only hierarchy names.

## Workshop Flow

Implement and enable tests in this order:

1. `test_smoke_reset_only`
2. `test_phase_toggle_template`
3. `test_ldi_template`
4. `test_memory_roundtrip_template`
5. `test_add_sub_template`
6. `test_jmpz_template`
7. `test_control_decode_template`
8. `test_mini_program_template`

Template tests are marked `skip=True` on purpose. Remove `skip=True` only after implementing each test.

## Helpers Provided

In `test_smoke.py`:

- `start_clock(dut)`
- `reset_dut(dut)`
- `make_instr(opcode, operand)`
- `pc_from_debug(dut)`
- `fetch_from_debug(dut)`
- `run_instr(dut, instr)`
- `enter_exec_with_opcode(dut, instr, expected_opcode)`
- `_cpu(dut)`
- `settle()`

Students should extend these helpers as needed, for example with stricter fetch/execute alignment checks, custom trace logging, or extra assertions for new opcodes.

## Suggested Exercise Questions

Use these as the test-writing goals during the workshop:

1. Can the CPU reset to a known state?
2. Does the FSM alternate fetch and execute every clock?
3. Can LDI load an immediate value into ACC?
4. Can STO and LDM round-trip a value through memory?
5. Do ADD and SUB use the RAM operand correctly?
6. Does JMPZ only jump when ACC is zero?
7. Does the design survive a short instruction sequence end-to-end?
8. Can the decode signals be checked in RTL while staying safe in GLS?
