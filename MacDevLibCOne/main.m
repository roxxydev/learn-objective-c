#import <Foundation/Foundation.h>

//#import "XYZPerson+XYZPersonDisplayAdditions.h"
#import "XYZPerson.h"
#import "XYZPerson_XYZAlien.h"
#import "XYZFilipino.h"

#import "XYZStreetLegal.h"
#import "XYZBicycle.h"
#import "XYZTricycle.h"

static BOOL experimentLiterals() {
    NSNumber *rad = @3.141516f;
    NSNumber *booleanYes = @YES;
    NSNumber *booleanNo = @NO;
    NSNumber *longNum = @123456L;
    NSNumber *boxNum = @(14/7);
    NSLog(@"%@ %@ %@ %@ %@", rad, booleanYes, booleanNo, longNum, boxNum);
    
    return 0;
}

static BOOL experimentProtocol() {
    id <XYZStreetLegal> mysteryVehicle = [[XYZBicycle alloc] init];
    [mysteryVehicle signalRightTurn];
    
    // check if object 'mysteryVechicle' conforms to Protocol 'XYZStreetLegal'
    if ([mysteryVehicle conformsToProtocol:@protocol(XYZStreetLegal)]) {
        NSLog(@"mysteryVehicle conforms to XYZStreetLegal protocol");
    }
    
    mysteryVehicle = [[XYZTricycle alloc] init];
    [mysteryVehicle signalLeftTurn];
    
    // check if mysteryVehicle object implement Protocol optional method 'signalFullStop'
    if ([mysteryVehicle respondsToSelector:@selector(signalFullStop)]) {
        [mysteryVehicle signalFullStop];
    }
    
    return 0;
}

static BOOL experimentArray() {
    // NSArray initialization
    NSString *strFirstIdx = @"firstObj";
    NSNumber *numSecondIdx= [[NSNumber alloc] initWithInt: 55];
    NSNumber *numThirdIdx= [[NSNumber alloc] initWithInt: 8];
    NSNumber *numFourthIdx= [[NSNumber alloc] initWithInt: 89];
    NSArray *arrObjects = [NSArray arrayWithObjects:strFirstIdx, numSecondIdx, numThirdIdx, numFourthIdx, nil];
    
    if ([arrObjects count] > 0 && [arrObjects containsObject:@89]) {
        NSLog(@"contains the query object: %@", @89);
    }
    
    int idx = 2;
    // [arrObjects objectAtIndex:idx] is same as arrObjects[idx]
    NSLog(@"object at index %d is %@", idx, [arrObjects objectAtIndex:idx]);
    
    // replace first index with integer because selector does not respond to string
    arrObjects = [NSArray arrayWithObjects:numSecondIdx, numSecondIdx, numThirdIdx, numFourthIdx, nil];
    NSArray *sortedObject = [arrObjects sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"object at index %d after sorting is %@", idx, [sortedObject objectAtIndex:idx]);
    
    // Initialization using Mutable array
    NSMutableArray *arrMutableObj = [NSMutableArray array];
    [arrMutableObj addObject:@"Juan Dela Cruz"];
    [arrMutableObj addObject:@25];
    [arrMutableObj addObject:@YES];
    NSMutableString *address = [NSMutableString stringWithFormat:@"Paransilyo St., Kapasigan, Pasig City"];
    [arrMutableObj addObject: address];
    
    NSUInteger lastIdx = [arrMutableObj count] -1;
    NSMutableString *addressWithStreetNo = [[NSMutableString alloc] init];
    [addressWithStreetNo appendFormat: @"%@ %@", @"48", address];
    [arrMutableObj replaceObjectAtIndex: lastIdx withObject: addressWithStreetNo];
    
    NSLog(@"result of using mutable object inside mutable array: %@", [arrMutableObj objectAtIndex: lastIdx]);
    
    return 0;
}

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
        
        experimentLiterals();
        experimentProtocol();
        experimentArray();
    }
    return 0;
}
