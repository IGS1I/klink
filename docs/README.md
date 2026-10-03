# klink

Originally built during _AI4ALL Ignite Class3-Group1_

**Created & Developed by:**

- Andrew Hernandez (during AI4ALL cohort)
- William Coleman (currently developing)

## Description

Klink is a multi-model system that showcases the ability to deconstruct songs, recognizing their instruments, classifying them into genres, and predicting the emotions/moods that the song causes listeners to feel, using artificial intelligence.

Genre-based or mood-based playlists can then be created on a frontend for users to enjoy.

## Reasearch Question Asked

How accurately can AI models predict a song's emotional mood based on extracted audio features compared to human perception?

## Machine Learning Methods

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

- PyTorch
- Modular Max
- Scikit-learn
- Librosa
- Pandas
- Matplotlib
- NumPy
- os
- tdqm
- Jupyter

### Deployment Tools

- Docker
- Docker Compose
- Streamlit

## Repository Layout

```directory structure
klink/
├── apps/
│   └── streamlit_app.py       # Streamlit app deployment code for klink
│
├── assets/                    # Images used in project docs
│
├── benchmark/
│   ├── docker-compose.yml     # Multi-container orchestration details
│   ├── Dockerfile             # Benchmarking environment details
│   ├── infer_max.mojo         # Modular Max inferencing script
│   ├── infer_pytorch.py       # Pytorch inferencing script
│   ├──PURPOSE.md              # Purpose of benchmarking
│   └── STEPS.md               # Steps to start benchmarking
│
├── data/
│   ├── raw/                   # Placeholder directory for raw datasets
│   ├── processed/             # CSVs of extracted features, from raw datasets
│   └── ACQUIRE.md             # Instructions for aqcuiring raw datasets
│
├── docs/
│   ├── CHANGELOG.md           # klink changelogs
│   ├── CONTRIBUTING.md        # Details for contributing to the project
│   ├── README.md
│   └── TODO.md
│
├── logs/                      # Benchmark logs and Metrics
│
├── models/                    # Model weights (essentially the models themselves)
│
├── notebooks/                 # Jupyter notebooks for data and model analysis
│
├── src/
│   ├── __init__.py
│   ├── audio_features.mojo    # Feature engineering using mojo-native libaries (w/ librosa fallback)
│   ├── audio_features.py      # Feature engineering using Python libraries (Librosa/NumPY)
│   ├── dataset.py             # Python Dataset pipelines
│   ├── models.py              # Python neural network architecture
│   └── train.py               # Model Training pipeline
│
├── .dockerignore              # List of files and directories for docker to ignore
├── .gitignore                 # List of files and directories git should not include in version control
├── LICENSE                    # Repository license for public use and open developement
├── pixi.lock                  # Locked/persistant version of pixi.toml
└── pixi.toml                  # Project dependency and packaging configuration
```

## Results

- Instrument able to be predicted from any given song's audio features. Looking to increase accuracy and the number of predicted instruments.

**Ignite Cohort results:**
![AI4ALL Ignite Cohort Results](/assets/AI4ALLIgnitePoster.png)