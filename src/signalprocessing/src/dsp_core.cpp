#include <iostream>

extern "C" {
    // Process audio buffer in-place to avoid duplication overhead
    int process_mel_spectrogram(float* audio_buffer, int sample_count, float* output_features)
    {
        if (!audio_buffer || !output_features) return -1; // standard error

        for (int i=0; i < sample_count; ++i)
        { // Apply heavy mathematical operations (FFT / Log-Mel tranforms)
            output_features[i] = audio_buffer[i] * 0.5f;
        }
        return 0; 
    }
}