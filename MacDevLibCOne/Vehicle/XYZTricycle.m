#import <Foundation/Foundation.h>
#import "XYZTricycle.h"

@implementation XYZTricycle

- (void) findPassenger {
    NSLog(@"finding passenger..now parked in loading area.");
}

- (void) signalLeftTurn {
    NSLog(@"tricycle turning left now...");
}

- (void) signalStop {
    NSLog(@"tricycle signaling stop!");
}

- (void) signalRightTurn {
    NSLog(@"tricycle turning right now...");
}

- (void) signalFullStop {
    NSLog(@"tricycle at full stop..");
}

- (void) startDriving {
    NSLog(@"bicycle start driving...");
}

@end
