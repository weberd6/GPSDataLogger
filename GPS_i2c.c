#include <stdbool.h>

#include <p24EP512GU810.h>
#include <i2c.h>

void randomReadAddress(unsigned char device_address, unsigned char register_address) {
    while (true) {
        StartI2C2();
        IdleI2C2();

        MasterWriteI2C2(device_address << 1); // Read, set RW bit
        IdleI2C2();
        
        if (I2C2STATbits.ACKSTAT == 0)
            break;
    }

    MasterWriteI2C2(register_address); // No RW bit
    IdleI2C2();

    RestartI2C2();
    IdleI2C2();
    
    MasterWriteI2C2((device_address << 1) | 0x01); // Read, set RW bit
    IdleI2C2();
}

void currentReadAddress(unsigned char device_address) {
    while (true) {
        StartI2C2();
        IdleI2C2();

        MasterWriteI2C2((device_address << 1) | 0x01); // Read, set RW bit
        IdleI2C2();
        
        if (I2C2STATbits.ACKSTAT == 0)
            break;
    }
}

void writeAccess(unsigned char device_address, unsigned int num_bytes) {
    // Must be greate than 2 bytes
    if (num_bytes < 3)
        return;

    while (true) {
        StartI2C2();
        IdleI2C2();

        MasterWriteI2C2(device_address << 1); // Write, don't set RW bit
        IdleI2C2();

        if (I2C2STATbits.ACKSTAT == 0)
            break;
    }
}

void readGPSData(unsigned char *bytes, unsigned int num_bytes) {
    int i;
    
    for (i = 0; i < num_bytes; i++) {
        bytes[i] = MasterReadI2C2();
        AckI2C2();
        IdleI2C2();
    }

    NotAckI2C2();
    IdleI2C2();
    StopI2C2();
    IdleI2C2();
}

void writeGPSData(unsigned char *bytes, unsigned int num_bytes) {
    int i;
    for (i = 0; i < num_bytes; i++) {
        MasterWriteI2C2(bytes[i]);
    }
    StopI2C2();
    IdleI2C2();
}