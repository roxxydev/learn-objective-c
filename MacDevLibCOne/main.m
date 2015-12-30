#import <Foundation/Foundation.h>

//#import "XYZPerson+XYZPersonDisplayAdditions.h"
#import "XYZPerson_XYZAlien.h"
#import "XYZFilipino.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create default person
        [XYZPerson setDefaultPerson:@"Juan" setLastName:@"Dela Cruz"];
        
        XYZFilipino *pinoy = [[XYZFilipino alloc] init];
        
        // The comment code below is the same function as the same next line initialization
        //XYZPerson *person = [XYZPerson new];
        XYZPerson *person = [[XYZPerson alloc] init];
        
        NSLog(@"person {%@} is equals to pinoy {%@}: %hhd", [person firstName], [pinoy firstName], [person isEqual: pinoy]);
        
        XYZPerson *dummyPerson;
        if (!dummyPerson) {
            // If dummyPerson variable is nil, its logical value is 0 (false).
            // So NOT 0 is evaluated as 1
            NSLog(@"nil value");
        } else {
            NSLog(@"not nil value");
        }
        
        [person sayHello];
        
        [person setFirstName:@"Roxxy"];
        [person setLastName:@"Rafael"];
        [person setMale:YES];
        [person displayFullNameWithId];
//        [person xyz_displayUpperCase];
        [person sayHello];
        [person sayHi: person];
        
        NSLog(@"Dialect spoken: %@", [pinoy getLanguage]);
        
         [person printInstanceVariables];
        
        //pinoy = [person copy];
        //[pinoy sayHelloFilipino];
        
        NSNumber *rad = @3.141516f;
        NSNumber *booleanYes = @YES;
        NSNumber *booleanNo = @NO;
        NSNumber *longNum = @123456L;
        NSNumber *boxNum = @(14/7);
        NSLog(@"%@ %@ %@ %@ %@", rad, booleanYes, booleanNo, longNum, boxNum);
    }
    return 0;
}