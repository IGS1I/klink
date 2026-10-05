from pathlib import Path

import torch

from model import AudioClassifier


def train():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = AudioClassifier().to(device)
    # ... Training Loop ...

    # Save PyTorch weights for inference benchmarking
    project_root = Path.cwd().resolve().parent
    model_path = project_root / "models"
    torch.save(model.state_dict(), model_path / "instrument_cnn.pt")
    print("Model saved successfully to", model_path / "instrument_cnn.pt")

if __name__ == "__main__":
    train()