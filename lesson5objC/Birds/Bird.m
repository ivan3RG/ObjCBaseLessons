//
//  Bird.m
//  lesson5objC
//
//  Created by Иван Кочетков on 08.07.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initWithNumber: (NSNumber *)number{
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Bird in formation, comrade!");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"bird is going out - %@", _number);
    [_number release];
    [super dealloc];
}


@end
