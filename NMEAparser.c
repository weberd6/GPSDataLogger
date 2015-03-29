#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <p24EP512GU810.h>
#include <spi.h>

#include "NMEAparser.h"
#include "GPX.h"

enum sentence_type_t SentenceType(char* string) {
    if (strcmp(string, "GPRMC") == 0) {
        return GPRMC;
    } else {
        return OTHER;
    }
}

unsigned char calculateChecksum(char *string) {
    unsigned char checksum = 0;
    char *cur;

    for (cur = string; *cur != '*'; cur++) {
        checksum ^= *cur;
    }
    return checksum;
}

char* time(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + sizeof(char);

    data->fix_time.hour = (string[0]-48)*10 + (string[1]-48);
    data->fix_time.min = (string[2]-48)*10 + (string[3]-48);
    string[6] = '\0';
    data->fix_time.sec = atof(&string[4]);

    return string + 10*sizeof(char);
}

char* latitude(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + 2*sizeof(char);

    string[10] = '\0';
    data->latitude = (string[0]-48)*10 + (string[1]-48) + 1/60 * (atof(&string[2]));
    if (string[11] == 'S')
        data->latitude = 0 - data->latitude;

    return string + 12*sizeof(char);
}

char* longitude(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + 2*sizeof(char);
    
    string[11] = '\0';
    data->longitude = (string[0]-48)*100 + (string[1]-48)*10 + (string[2]-48) + 1/60 * (atof(&string[3]));
    if (string[11] == 'W')
        data->longitude = 0 - data->longitude;

    return string + 13*sizeof(char);
}

char* speedk(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + sizeof(char);

    string[5] = '\0';
    data->speed_knots = atof(string);

    return string + 6*sizeof(char);
}

char* date(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + sizeof(char);

    data->date.day = (string[0]-48)*10 + (string[1]-48);
    data->date.month = (string[2]-48)*10 + (string[3]-48);
    data->date.year = (string[4]-48)*10 + (string[5]-48);

    return string + 6*sizeof(char);
}

char* magneticVariation(char* string, struct RMCData *data) {
    if (*string == ',')
        return string + sizeof(char);

    string[5] = '\0';
    data->mag_var = atof(string);

    return string + 7*sizeof(char);
}

int checksum(char* string, unsigned char ccs) {
    char cs;

    if (string[0] != '*')
        return -1;

    char bit1 = ((string[1]-48) < 10) ? (string[1]-48) : (string[1]-55);
    char bit0 = ((string[2]-48) < 10) ? (string[2]-48) : (string[2]-55);

    cs = (bit1)*16 + bit0;
    if (cs != ccs)
        return -1;

    return 0;
}

int parseGPRMC(char* string, struct RMCData *data, unsigned char cs) {
    char *data_string = string;

    // Time
    data_string = time(data_string, data);

    // Status
    data->status = *data_string;
    data_string += 2*sizeof(char);

    // Latitude and longitude
    data_string = latitude(data_string, data);
    data_string = longitude(data_string, data);

    // Speed
    data_string = speedk(data_string, data);

    // Track angle
    while (*data_string != ',') // Skip
        data_string++;
    data_string++;

    // Date
    data_string = date(data_string, data);

    // Magnetic Variation
    data_string = magneticVariation(data_string, data);

    // Checksum
    return 0;//checksum(data_string, cs);
}

int parseNMEA(char *string, struct RMCData *data) {
    char sentence_name[6];
    unsigned char cs;

    cs = calculateChecksum(string);

    strncpy(sentence_name, string, 5);

    switch (SentenceType(sentence_name)) {
    case GPRMC:
        return parseGPRMC(string+6*sizeof(char), data, cs);
        break;
    case OTHER:
        break;
    }

    return -1;
}