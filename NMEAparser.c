#include <string.h>
#include <stdio.h>

#include <p24EP512GU810.h>
#include <spi.h>

#include "NMEAparser.h"

enum sentence_type_t SentenceType(char* string) {
    if (strcmp(string, "GPRMC") == 0) {
        return GPRMC;
    } else {
        return OTHER;
    }
}

struct RMCData parseGPRMC() {
    struct RMCData gps_data;

    return gps_data;
}

struct RMCData parseNMEA(char *string) {
    struct RMCData gps_data;
    char *sentence_name;

    printf("%s", string);

    sentence_name = strtok(string, "$");
    while (sentence_name != NULL) {
        switch (SentenceType(sentence_name)) {
        case GPRMC:
            gps_data = parseGPRMC();
            break;
        case OTHER:
            break;
        }
        sentence_name = strtok(string, "$");
    }

    return gps_data;
}