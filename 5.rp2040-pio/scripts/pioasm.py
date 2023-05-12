"""
Custom pioasm compiler script for platformio.
(c) 2022 by P.Z.

"""
from os.path import join
import glob
import sys
Import("env")

platform = env.PioPlatform()
PROJ_SRC = env["PROJECT_SRC_DIR"]
PIO_FILES = glob.glob(join(PROJ_SRC, '*.pio'), recursive=True)

if PIO_FILES:
    PIOASM_EXE = "pioasm"
    print("pio files found:")
    for filename in PIO_FILES:
        env.Execute(PIOASM_EXE + f' -o c-sdk {filename} {filename}.h')
