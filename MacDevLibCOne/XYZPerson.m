#import <Foundation/Foundation.h>

#import "XYZPerson_XYZAlien.h"
#import "XYZPerson.h"

static XYZPerson *_defaultPerson;

@implementation XYZPerson {
    // this create instance variable without property
    NSString *_anotherCustomInstanceVariable;
}

- (id) initWithModel:(XYZPerson *)personModel {
    self = [super init];
    if (self) {
        [self setFirstName:[personModel firstName]];
        [self setLastName:[personModel lastName]];
        _myNonPropertyInstanceVariable = @"Superman";
        _anotherCustomInstanceVariable = @"Batman";
    }
    return self;
}

- (id) init {
    return [self initWithModel: _defaultPerson];
}

- (NSString *) anotherCustomInstanceVariable {
    // Custom accessor of instance variable without property
    return @"Wonderwoman";
}

+ (void) setDefaultPerson:(NSString *) firstName setLastName:(NSString *) lastName {
    _defaultPerson = [[self alloc] init];
    [_defaultPerson setFirstName: firstName];
    [_defaultPerson setLastName: lastName];
    [_defaultPerson setMale: YES];
}

- (void) displayFullNameWithId {
    [self setPersonId:@"0123456789"];
    NSLog(@"%@_%@_%@", [self firstName], [self lastName], [self personId]);
} 
- (void) sayHi: (XYZPerson *) person {
    NSLog(@"Hi there! I am %@ %@", [person firstName], [person lastName]);}

- (void) sayHello {
    NSNumber *someNum = [[NSNumber alloc] initWithInt: 1992];
    NSMutableString *nameString = [NSMutableString stringWithString:@"Rox"];
    self.firstName = nameString;
    [nameString appendString:@"xy"];
    NSLog(@"Hello there! I am %@ %@ and my birth year is %@", [self firstName], [self lastName], someNum);
}

- (NSString *) getLanguage {
    return @"Tagalog";
}

- (void) printInstanceVariables {
    NSLog(@"_myNonPropertyInstanceVariable: %@", _myNonPropertyInstanceVariable);
    NSLog(@"_anotherCustomInstanceVariable: %@", _anotherCustomInstanceVariable);
    NSLog(@"Using custom accessor for instance variable w/o property: %@", [self anotherCustomInstanceVariable]);
}

- (id) copyWithZone:(NSZone *)zone {
    XYZPerson *personCopy = [[XYZPerson allocWithZone: zone] init];
    [personCopy setFirstName: self.firstName];
    [personCopy setLastName: self.lastName];
    [personCopy setMale: self.isMale];
    return personCopy;
}

- (BOOL) isEqual:(id)object {
    if (!object) {
        return [[self firstName] isEqualToString: [object firstName]];
    }
    return NO;
}

@end
