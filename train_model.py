#Author : Viranshu Paruparla - 204484351
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras import layers, models # type: ignore
import os

# Set random seeds for reproducibility
np.random.seed(42)
tf.random.set_seed(42)

def train_fashion_mnist_model():
    # Load Fashion MNIST dataset
    fashion_mnist = tf.keras.datasets.fashion_mnist
    (train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

    # Normalize pixel values to be between 0 and 1
    train_images = train_images / 255.0
    test_images = test_images / 255.0

    # Flatten the images
    train_images_flat = train_images.reshape((60000, 28*28))
    test_images_flat = test_images.reshape((10000, 28*28))

    # Build the MLP model
    model = models.Sequential([
        layers.Dense(128, activation='relu', input_shape=(28*28,)),
        layers.Dense(64, activation='relu'),
        layers.Dense(10)
    ])

    # Display model summary
    model.summary()

    # Compile the model
    model.compile(optimizer='adam',
                  loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
                  metrics=['accuracy'])

    # Train the model
    history = model.fit(train_images_flat, train_labels, epochs=20
                        , 
                        validation_data=(test_images_flat, test_labels))

    # Evaluate the model
    test_loss, test_acc = model.evaluate(test_images_flat, test_labels, verbose=2)
    print(f'Test accuracy: {test_acc:.4f}')

    # Save the model
    model.save('D:/Vivado/Fashion_MNIST_MLP/fashion_mnist_mlp.h5')
    
    return model, test_images, test_labels

if __name__ == "__main__":
    # Train model and get test data
    model, test_images, test_labels = train_fashion_mnist_model()
    
    # Display some test images
    plt.figure(figsize=(10, 10))
    for i in range(25):
        plt.subplot(5, 5, i+1)
        plt.xticks([])
        plt.yticks([])
        plt.grid(False)
        plt.imshow(test_images[i], cmap='gray')
        plt.xlabel(test_labels[i])
    plt.show()