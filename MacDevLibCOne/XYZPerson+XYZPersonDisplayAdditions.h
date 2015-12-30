#import "XYZPerson.h"

// Example of Category

@interface XYZPerson (XYZPersonDisplayAdditions)

// prefix method names of categories to avoid clashes with original class
- (void) xyz_displayUpperCase;

@end
