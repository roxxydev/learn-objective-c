#import <Foundation/Foundation.h>
#import "XYZStreetLegal.h"

// Example implementing Protocol. You can implement multiple protocol.
// Ex. <XYZStreetLegal, NSCopying>
@interface XYZBicycle : NSObject <XYZStreetLegal>

- (void) startPedaling;
- (void) removeFrontWheel;
- (void) lockToStructure;

@end