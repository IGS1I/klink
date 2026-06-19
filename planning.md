# Sonata Roadmap (Architecture)

## Step 1: Re-extraction of song features 
- Research features of audio and songs, which ones are important for characterizing the instruments and which are known from certain moods and genres.
- Re-extract audio features from data set.
- Add more data for a broader range of instruments (currentl classical instruments dominate datasets)

## Step 2: C++ DSP Implementation
- Implement basic windowing functions and Fast Fourier Transform (FFT) in `dsp_core.cpp`.
- Expose functions using an unmangled C ABI (`extern "C"`) so Mojo can map them directly.

## Step 3: Python Backend Foundations
- set up standard dataset data loaders for Emo Music GTZAN, and IRMAS.
- create deep learning classification wrappers in `backend/models.py`.

## Step 4: Mojo Core Integration
- Use Mojo's `sys.FFI.DLHandle` to dynamically load `libsonata_dsp.so`/ `.dylib`.
- Bind high-performance audio structures in `core/audio.mojo` directly to C++ memory pointers.
- Import `backend` Python wrappers into `core/pipeline.mojo` using Mojo's built-in Python integration layer.