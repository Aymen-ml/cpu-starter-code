# Workshop Examples

This folder contains 3 simple design+test examples for workshop demos.

## Examples

1. `01_invert8`: combinational logic example (bitwise invert)
2. `02_counter4`: sequential logic example (4-bit counter with reset/enable)
3. `03_toggle_fsm`: tiny state machine example (phase toggle + hold)

## Run an example

```sh
cd starter/examples/01_invert8
make -B
```

Replace `01_invert8` with `02_counter4` or `03_toggle_fsm`.

## Notes

- Each example is independent and uses Cocotb with Icarus.
- Keep these examples as references while students build tests in `starter/tests`.
