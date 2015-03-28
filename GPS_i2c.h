#ifndef GPS_H
#define	GPS_H

#ifdef	__cplusplus
extern "C" {
#endif

#define GPS_I2C_ADDRESS          0x42
#define GPS_BYTES_AVAILABLE_HIGH 0xFD
#define GPS_BYTES_AVAILABLE_LOW  0xFE
#define GPS_DATA_STREAM          0xFF

extern void randomReadAddress(unsigned char device_address,
                              unsigned char register_address);

extern void currentReadAddress(unsigned char device_address);

extern void writeAccess(unsigned char device_address, unsigned int num_bytes);

extern void readGPSData(unsigned char *bytes, unsigned int num_bytes);

extern void writeGPSData(unsigned char *bytes, unsigned int num_bytes);

#ifdef	__cplusplus
}
#endif

#endif	/* GPS_H */

