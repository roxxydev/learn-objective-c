#import <Foundation/Foundation.h>

// Example Protocol. In it's just like the java 'interface'.
@protocol XYZStreetLegal <NSObject>

- (void) signalStop;
- (void) signalLeftTurn;
- (void) signalRightTurn;

// protocols can have optional method
@optional
- (void) signalFullStop;

// and can have required method
@required
- (void) startDriving;

@end
