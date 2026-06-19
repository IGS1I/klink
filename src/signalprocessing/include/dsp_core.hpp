// src/dsp/include/dsp_core.hpp
/**
 * Meant to pass custom audio processing buffers and rapid mathematical
 * aeeays from C++ to Mojo by wrapping C++ code in a clean C ABI (extern C).
 */
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

// Placeholder function to process raw audio wave data via optimized C++ algorithms
void compute_mel_spectrogram(const float* raw_signal, int signal_length, float* output_features);

#ifdef __cplusplus
}
#endif
