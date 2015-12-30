#import <Foundation/Foundation.h>

#import "XYZFilipino.h"

@implementation XYZFilipino

- (id) init {
    return [self initWithFirstNameLastName:@"no firstname provided" lastName:@"no lastname provided"];
}

- (id) initWithFirstNameLastName:(NSString *) firstName lastName:(NSString *) lastName {
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
    }
    return self;
}

- (void) sayHelloFilipino {
    NSLog(@"Mabuhay! Ako si %@ %@", self.firstName, self.lastName);
}

- (void) greetMabuhay {
    NSLog(@"Mabuhay Philippines");
}

@end