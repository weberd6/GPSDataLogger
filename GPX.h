#ifndef GPX_H
#define	GPX_H

#include "NMEAparser.h"

#ifdef	__cplusplus
extern "C" {
#endif

extern void gpsFileOpen (const char* filename);
extern void gpsFileClose ();
extern void initGPXFS();
extern void logWaypoint(struct RMCData *data);

#ifdef	__cplusplus
}
#endif

#endif	/* GPX_H */

