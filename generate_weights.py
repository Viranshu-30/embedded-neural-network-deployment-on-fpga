#Author : Viranshu Paruparla - 204484351
import tensorflow as tf
import numpy as np
import os

def quantize_weights(weights, bits=8):
    """Convert floating point weights to fixed-point representation"""
    # Find the range of weights
    w_min = np.min(weights)
    w_max = np.max(weights)
    
    # Calculate scaling factor
    scale = (2**(bits-1) - 1) / max(abs(w_min), abs(w_max))
    
    # Quantize weights
    weights_q = np.round(weights * scale).astype(np.int8)
    
    return weights_q, scale

def create_coe_file(data, output_file):
    """Create a COE file for BRAM initialization"""
    with open(output_file, 'w') as f:
        # COE file header
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        
        # Write hex values
        for i, value in enumerate(data):
            # Convert to unsigned 8-bit representation (two's complement)
            hex_val = format(value & 0xFF, '02X')
            f.write(hex_val)
            if i < len(data) - 1:
                f.write(",\n")
            else:
                f.write(";")

def export_mlp_weights_to_separate_coe(model, output_dir, bits=8):
    """Extract model weights and export to separate COE files for BRAM initialization"""
    
    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Get the layers
    layer1 = model.layers[0]  # First hidden layer (784 -> 128)
    layer2 = model.layers[1]  # Second hidden layer (128 -> 64)
    layer3 = model.layers[2]  # Output layer (64 -> 10)
    
    # Extract weights and biases
    weights1 = layer1.get_weights()[0]  # Shape: (784, 128)
    biases1 = layer1.get_weights()[1]   # Shape: (128,)
    
    weights2 = layer2.get_weights()[0]  # Shape: (128, 64)
    biases2 = layer2.get_weights()[1]   # Shape: (64,)
    
    weights3 = layer3.get_weights()[0]  # Shape: (64, 10)
    biases3 = layer3.get_weights()[1]   # Shape: (10,)
    
    # Quantize all weights and biases
    weights1_q, w1_scale = quantize_weights(weights1, bits)
    biases1_q, b1_scale = quantize_weights(biases1, bits)
    
    weights2_q, w2_scale = quantize_weights(weights2, bits)
    biases2_q, b2_scale = quantize_weights(biases2, bits)
    
    weights3_q, w3_scale = quantize_weights(weights3, bits)
    biases3_q, b3_scale = quantize_weights(biases3, bits)
    
    # Save scaling factors
    with open(os.path.join(output_dir, 'scaling_factors.txt'), 'w') as f:
        f.write(f"Layer1_W_Scale: {w1_scale:.6f}\n")
        f.write(f"Layer1_B_Scale: {b1_scale:.6f}\n")
        f.write(f"Layer2_W_Scale: {w2_scale:.6f}\n")
        f.write(f"Layer2_B_Scale: {b2_scale:.6f}\n")
        f.write(f"Layer3_W_Scale: {w3_scale:.6f}\n")
        f.write(f"Layer3_B_Scale: {b3_scale:.6f}\n")
    
    # Create separate COE files for each layer's weights and biases
    create_coe_file(weights1_q.flatten(), os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer1_weights.coe'))
    create_coe_file(biases1_q, os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer1_biases.coe'))
    
    create_coe_file(weights2_q.flatten(), os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer2_weights.coe'))
    create_coe_file(biases2_q, os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer2_biases.coe'))
    
    create_coe_file(weights3_q.flatten(), os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer3_weights.coe'))
    create_coe_file(biases3_q, os.path.join(output_dir, 'D:/Vivado/Fashion_MNIST_MLP/layer3_biases.coe'))
    
    print(f"Weights and biases exported to separate COE files in {output_dir}")
    print(f"Layer 1 weights: {weights1_q.size} values")
    print(f"Layer 1 biases: {biases1_q.size} values")
    print(f"Layer 2 weights: {weights2_q.size} values")
    print(f"Layer 2 biases: {biases2_q.size} values")
    print(f"Layer 3 weights: {weights3_q.size} values")
    print(f"Layer 3 biases: {biases3_q.size} values")

if __name__ == "__main__":
    # Load the trained model
    model = tf.keras.models.load_model('D:/Vivado/Fashion_MNIST_MLP/fashion_mnist_mlp.h5')
    
    # Export weights to separate COE files
    export_mlp_weights_to_separate_coe(model, 'bram_init', bits=8)