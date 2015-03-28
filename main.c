#include <string.h>
#include <stdbool.h>

#include "PICConfig.h"
#include "uMedia.h"

#include "GPS_i2c.h"
#include "NMEAparser.h"

#define MAX_BUFFER_SIZE 4096

char buffer[MAX_BUFFER_SIZE];

int main() {
    char *nmea_string;
    struct RMCData gps_data;
    unsigned char bytes_available[2];
    unsigned int num_to_read;

    uMBInit();

    while (true) {
        // Get number of bytes available
        randomReadAddress(GPS_I2C_ADDRESS, GPS_BYTES_AVAILABLE_LOW);
        readGPSData(&bytes_available[0], 1);

        currentReadAddress(GPS_I2C_ADDRESS);
        readGPSData(&bytes_available[1], 1);
        num_to_read = (bytes_available[0] << 8) | (bytes_available[1]);

        // Read NMEA string
        randomReadAddress(GPS_I2C_ADDRESS, GPS_DATA_STREAM);
        memset(buffer, 0, MAX_BUFFER_SIZE);
        readGPSData((unsigned char*)buffer, num_to_read);

        // Parse NMEA string
        nmea_string = strtok(buffer, "$");
        gps_data = parseNMEA(nmea_string);
    }

    return 0;
}