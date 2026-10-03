# Klink Roadmap (Post-AI4ALL)

## - Step 1: Re-extraction of song features

- Research features of audio and songs, which ones are important for characterizing the instruments and which are known from certain moods and genres.
- Re-extract audio features from data set.
- Add more data for a broader range of instruments (currently classical instruments dominate datasets)

## Step 2: PyTorch Implementation

- Implement PyTorch library to train models
- Setup data splitting and training pipelines, hybridizing between Scikit-learn and PyTorch's `random_split` function

## Step 4: Modular Max & Mojo Integration

- Use Max for inferencing models trained with PyTorch.
- Use Mojo-native tools/libraries to extract features, which will NOT replace previous pipeline, but will similarly be available for benchmarking.
- Setup Docker for inference benchmarking PyTorch against Modular Max.

## Step 5: Model accuracy

- Train model until accuracy reaches greater than 90%.
- Ensure multiple instruments can be listed.
- Check whether any instruments are false positives, missing instruments (true Negatives) is much better.

## Step 5: Work on current web app and user outputs

- Choose to either stick with service like Streamlit or develop a frontend.
- Customize how users receive results (currently redundant).

- Ask user about accuracy.

## Step 6: Create klink binary

- Develop klink as a terminal program.
- Choose package managers to deploy on (pacman, apt, yay, etc)

## Step 7: Create klink Desktop app

- Develop a downloadable local app for klink users(Windows, linux, and maybe MacOS).
