#import "XYZPerson+XYZPersonDisplayAdditions.h"

@implementation XYZPerson (XYZPersonDisplayAdditions)

- (void) xyz_displayUpperCase {
    NSString * fullName = [[NSString alloc] init];
    fullName = [NSString stringWithFormat: [self firstName], [self lastName]];
    NSLog(@"Full name in capital: %@", [fullName uppercaseString]);
}

@end
