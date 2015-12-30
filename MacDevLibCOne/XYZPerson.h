#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@interface XYZPerson : NSObject <NSCopying> {
    // this create instance variable without using property
    NSString *_myNonPropertyInstanceVariable;
}

// Most properties are backed by instance variables
@property NSString *firstName;
@property NSString *lastName;
@property (readonly) NSDate *birthday;
@property (getter=isMale) BOOL male;

+ (void) setDefaultPerson:(NSString *) firstName setLastName:(NSString *) lastName;// class method

- (void) sayHi: (XYZPerson *) person;// instance method
- (void) sayHello;
- (NSString *) getLanguage;

- (void) printInstanceVariables;

- (id) copyWithZone:(NSZone *)zone;
- (BOOL)isEqual:(id)object;

@end