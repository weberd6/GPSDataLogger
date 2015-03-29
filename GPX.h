#ifndef GPX_H
#define	GPX_H

#include "NMEAparser.h"

extern void gpsFileOpen (const char* filename);
extern void gpsFileClose ();
extern void InitGPXFS();
extern void logWaypoint(struct RMCData *data);

#endif	/* GPX_H */

