# embedded-neural-network-deployment-on-fpga

## 📌 Project Overview

This project implements a fully functional neural network for image classification on the **Zybo Z10 FPGA** using **VHDL**. It targets low-power deployment of machine learning models in embedded systems, specifically using the **Fashion MNIST dataset**.

Rather than relying on GPUs or CPUs, the neural network is accelerated via FPGA, achieving competitive classification accuracy with significantly lower power consumption — demonstrating the potential of domain-specific hardware accelerators in edge AI applications.

## 🎯 Objective

- Classify Fashion MNIST images using a 3-layer neural network.
- Achieve hardware-level acceleration using BRAMs and pipelined fixed-point computations.
- Interface with external devices via UART and SSD for data input/output.
- Optimize for energy-efficient computation on embedded platforms.

## 🛠️ System Architecture

- **UART Interface** (9600 baud): For sending 28×28 grayscale image data from PC to FPGA.
- **Dual-Port BRAM**: Buffers image data across two clock domains (125 MHz for UART, 36 MHz for NN).
- **Three-Layer Neural Network**:
  - Input Layer: 784 neurons
  - Hidden Layers: 128 and 64 neurons
  - Output Layer: 10 neurons (classes 0–9)
- **Seven-Segment Display**: Displays the classification result (0–9).
- **LEDs**: Indicate system states (Idle, Receiving, Processing, Result Ready).

## 📁 File Hierarchy

- `fashion_mnist_top`: Main module integrating all components.
- `uart_receiver`: Handles serial data input.
- `image_bram_controller`: Manages image buffering and clock domain crossing.
- `nn_top`: Controls data flow through NN layers and decision logic.
- `mlp_layer`: Configurable MLP computation unit (matrix multiply, bias add, ReLU).
- `*.coe files`: Store quantized weights/biases from trained model.

## ⚙️ Tools & IPs Used

- **Vivado Design Suite (2023.x)**
- **Clocking Wizard**: Converts system clock (125 MHz) to 36 MHz for NN processing.
- **Integrated Logic Analyzer (ILA)**: Debugging UART and state machine behavior.
- **BRAM IP Cores**: Store weights and biases from trained model.

## 🧠 Model Training

- **Framework**: TensorFlow (Python)
- **Architecture**: MLP (784 → 128 → 64 → 10)
- **Training Dataset**: Fashion MNIST
- **Accuracy Achieved**: ~89%
- **Quantization**: 8-bit fixed-point
- **Deployment Format**: `.coe` files for FPGA BRAM initialization

## 🧪 Verification

- **Testbench**:
  - Simulates UART communication and image feeding.
  - Verifies correct classification.
- **ILA Debugging**:
  - Monitors `rx_data`, `rx_valid`, and `bram_write_addr` signals for reliable communication and memory mapping.

## 📆 Timeline & Challenges

- Initial design completed early.
- Faced synthesis/bitstream issues due to BRAM overload — resolved by modularizing weights across multiple BRAMs.
- Clock domain synchronization was critical (achieved via dual-port RAM).
- VGA PMOD support was planned but deferred due to time constraints.

## 📚 Lessons Learned

- Hardware implementation requires mindful architecture planning unlike software ML.
- Clock domain crossing, modular memory allocation, and fixed-point math are essential.
- Backup planning and instructor feedback were key to project success.

## 🔮 Future Work

- Implement CNNs/DNNs on FPGA.
- Explore floating-point arithmetic for higher accuracy.
- Integrate VGA output for visual display of classification results.

## ✅ Conclusion

This project demonstrated that FPGAs can efficiently host neural networks for edge ML applications. With optimized memory, clock management, and fixed-point design, the implemented system achieves high accuracy and low power consumption, making it a viable solution for embedded AI.

---
