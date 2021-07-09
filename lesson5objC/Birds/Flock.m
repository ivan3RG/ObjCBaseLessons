//
//  flock.m
//  lesson5objC
//
//  Created by Иван Кочетков on 08.07.2021.
//

#import "Flock.h"

@implementation Flock
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"birds in air!");
    }
    return self;
}

- (void)flokBirds:(NSArray *)birds withFormation:(NSString *)formation{
    [birds retain];
    [birds release];
    _formation = formation;
    for (Bird *bird in birds) {
        NSLog(@"New bird in flok! Number (%@)", bird.number);
    }
}

- (void)remove {
    NSLog(@"Birds flying out");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}
- (void)dealloc
{
    [self remove];
    NSLog(@"Dealloc flock");
    [super dealloc];
}

@end
