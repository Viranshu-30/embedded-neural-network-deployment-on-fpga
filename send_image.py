#Author: Viranshu Paruparla - 204484351
import serial
import time

# Fashion MNIST image 
image_data = [
    # Row 0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 2
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 3
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 4
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 5
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 6
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 7
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 8
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 9
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 56, 178, 85, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 10
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 244, 253, 253, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 210, 253, 253, 253, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 12
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 166, 253, 253, 253, 253, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 13
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 253, 253, 253, 253, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 14
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 140, 253, 253, 253, 253, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 15
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 193, 253, 253, 253, 253, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 16
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 253, 253, 253, 253, 253, 250, 182, 73, 4, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 17
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 253, 253, 253, 253, 253, 253, 253, 253, 125, 1, 0, 0, 0, 0, 0, 0, 0,
    # Row 18
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 253, 253, 253, 253, 253, 253, 253, 253, 253, 73, 1, 0, 0, 0, 0, 0, 0,
    # Row 19
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 175, 253, 253, 253, 253, 253, 253, 253, 253, 253, 161, 2, 0, 0, 0, 0, 0,
    # Row 20
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 200, 253, 253, 253, 253, 253, 253, 253, 253, 252, 115, 0, 0, 0, 0, 0,
    # Row 21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 151, 253, 253, 253, 253, 253, 253, 253, 253, 253, 35, 0, 0, 0, 0,
    # Row 22
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 93, 132, 233, 253, 253, 253, 253, 253, 253, 127, 0, 0, 0, 0,
    # Row 23
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 92, 98, 240, 253, 253, 253, 240, 5, 0, 0, 0,
    # Row 24
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 235, 253, 253, 155, 0, 0, 0, 0,
    # Row 25
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 253, 221, 26, 0, 0, 0, 0,
    # Row 26
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    # Row 27
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
]

def send_image(port_name):
    # Set up serial port
    ser = serial.Serial(
        port=port_name,       # Specify your COM port here (e.g., 'COM3' on Windows, '/dev/ttyUSB0' on Linux)
        baudrate=9600,        # Match your FPGA's configured baud rate
        bytesize=serial.EIGHTBITS,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        timeout=1
    )
    
    try:
        print(f"Connected to {port_name} at 9600 baud")
        print("Sending Fashion MNIST Sandal image (Class 9)...")
        
        # Send all 784 pixels one by one
        for i, pixel in enumerate(image_data):
            # Convert pixel value to a byte and send
            ser.write(bytes([pixel]))
            
            # Progress indicator
            if i % 100 == 0:
                print(f"Sent {i} pixels...")
                
            # Small delay to ensure reliable transmission
            time.sleep(0.002)  # 2ms delay between bytes
        
        print(f"All {len(image_data)} pixels sent!")
        print("Waiting for processing to complete...")
        time.sleep(5)  # Give the FPGA time to process
        print("Done!")
        
    except Exception as e:
        print(f"Error: {e}")
    
    finally:
        # Close the serial port
        ser.close()
        print("Serial port closed")

# Usage example - replace 'COM3' with your actual serial port
if __name__ == "__main__":
    port = input("Enter your serial port (e.g., COM3, /dev/ttyUSB0): ")
    send_image(port)