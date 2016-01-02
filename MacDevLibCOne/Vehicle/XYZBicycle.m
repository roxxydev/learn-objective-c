#import <Foundation/Foundation.h>
#import "XYZBicycle.h"

@implementation XYZBicycle 

- (void) startPedaling {
    NSLog(@"pedaling...");
}

- (void) removeFrontWheel {
    NSLog(@"removing front wheel...");
}

- (void) lockToStructure {
    NSLog(@"locking structure...");
}

- (void) signalLeftTurn {
    NSLog(@"bicycle turning left now...");
}

- (void) signalStop {
    NSLog(@"bicycle signaling stop!");
}

- (void) signalRightTurn {
    NSLog(@"bicycle turning right now...");
}

- (void) startDriving {
    NSLog(@"bicycle start driving...");
}

@end