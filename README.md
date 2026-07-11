# Klink
> For the sake of package conflicts and environement identitification: klink-audio

_AI4ALL Class3-Group1_
#### Project Description
Project will showcase an AI model's ability to deconstruct songs, predict their metadata, and then possibly make a genre-based or mood-based playlist for a user to enjoy.

## Project Created & Devleloped by:
- Andrew Hernandez (during course)
- William Coleman (currently developing)

## Reasearch Question
How accurately can an AI model predict a song's emotional mood based on extracted audio features compared to human perception?

## Key Results
- Instrument able to be predicted from any given song's audio features. Looking to increase accuracy and the number of predicted instruments.

## Methods
- Semi-supervised Learning

## Data Sources
- EmoMusic
- GTZAN
- IRMAS

## Technologies Used

### Programming Languages 
- Python
- Mojo

### Frameworks & Libraries
- Keras
- Librosa
- Matplotlib
- NumPy
- Pandas
- Pydub
- Scikit-learn
- Streamlit
- Tensorflow


Possible new layout:

sonata/
├── CMakeLists.txt             # Builds C++ components into a shared library (.so/.dylib/.dll)
├── pyproject.toml             # Python dependency and packaging configuration
├── README.md
│
├── src/
│   ├── sonata.mojo            # The primary CLI entry point (Mojo binary)
│   │
│   ├── core/                  # High-performance Mojo modules
│   │   ├── __init__.mojo
│   │   ├── audio.mojo         # Audio loader and wave management
│   │   └── pipeline.mojo      # Controls coordination between ML models and DSP
│   │
│   ├── backend/               # Python ML Engine (Loaded dynamically by Mojo)
│   │   ├── __init__.py
│   │   ├── models.py          # Wrappers for Instrument, Genre, and Mood models
│   │   └── utils.py           # Feature engineering fallback (Librosa/Torch)
│   │
│   └── dsp/                   # C++ Low-Level Signal Processing
│       ├── include/
│       │   └── dsp_core.hpp   # C++ header with C-compatible ABI declarations
│       └── src/
│           └── dsp_core.cpp   # Heavy audio math (FFT, Mel-Spectrogram optimization)
│
└── tests/                     # Validation suite
    ├── test_backend.py        # Python unit tests
    └── test_core.mojo         # Mojo performance benchmarks
