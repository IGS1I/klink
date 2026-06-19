# src/sonata.mojo
"""
Master entry-point, instantiating Python neural networks, handling
command-line arguments, and preparing for custom Mojo array.
"""

from sys.ffi import DLHandle
from memory import UnsafePointer

fn main() raises:
    # 1. Dynamically load the C++ shared engine compiled by CMake/Pixi
    var dsp_lib = DLHandle("./libsonata_dsp.so")
    
    # 2. Define the exact C-function signature layout
    var process_func = dsp_lib.get_function[
        fn(UnsafePointer[Scalar[DType.float32]], Int32, UnsafePointer[Scalar[DType.float32]]) -> Int32
    ]("process_mel_spectrogram")
    
    # 3. Allocate a contiguous performance buffer natively inside Mojo
    var sample_count = 1024
    var input_buffer = UnsafePointer[Scalar[DType.float32]].alloc(sample_count)
    var output_buffer = UnsafePointer[Scalar[DType.float32]].alloc(sample_count)
    
    # 4. Invoke C++ directly; it operates instantly on Mojo's raw memory address
    var status = process_func(input_buffer, sample_count, output_buffer)
    if status < 0:
        print("Error: DSP computation failed.")
        
    input_buffer.free()
    output_buffer.free()

