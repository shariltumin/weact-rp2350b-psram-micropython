# cmake file for WeAct Studio RP2350B Core Board

set(PICO_BOARD "WEACTSTUDIO_RP2350B")
set(PICO_PLATFORM "rp2350")
set(PICO_NUM_GPIOS 48)

set(MICROPY_C_HEAP_SIZE 4096)

# The WeAct Studio boards don't have official pico-sdk support
list(APPEND PICO_BOARD_HEADER_DIRS ${MICROPY_BOARD_DIR})

# Freeze board.py
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)

