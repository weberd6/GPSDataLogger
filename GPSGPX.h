#ifndef GPX_H
#define	GPX_H

#include "GPSNMEAparser.h"
#include "MDD File System/FSIO.h"

extern FSFILE* gpsFileOpen (const char* filename);
extern void gpsFileClose ();
extern void logWaypoint(struct RMCData *data);

#endif	/* GPX_H */

