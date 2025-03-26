// Board and hardware specific configuration
#define MICROPY_HW_BOARD_NAME "WeAct Studio RP2350B Core w/PSRAM-8MB"
#define PICO_FLASH_SIZE_BYTES (16 * 1024 * 1024)
#define MICROPY_HW_FLASH_STORAGE_BYTES (PICO_FLASH_SIZE_BYTES - (2 * 1024 * 1024))

// PSRAM Settings
#define MICROPY_HW_ENABLE_PSRAM    (1)
#define MICROPY_HW_PSRAM_CS_PIN    PICO_PSRAM_CS_PIN
#define MICROPY_GC_SPLIT_HEAP      (1)
// -define MICROPY_GC_SPLIT_HEAP_AUTO (1)  // give compiling error

// Override machine_uart.c def
#define MICROPY_HW_UART0_TX (16)
#define MICROPY_HW_UART0_RX (17)
#define MICROPY_HW_UART0_CTS (-1)
#define MICROPY_HW_UART0_RTS (-1)

