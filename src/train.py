import torch
from model import AudioClassifier

def train():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = AudioClassifier().to(device)
    # ... Training Loop ...

    # Save PyTorch weights for inference benchmarking
    torch.save(model.state_dict(), "./models/instrument_cnn.pt")
    print("Model saved successfully to ./models/instrument_cnn.pt")

if __name__ == "__main__":
    train()