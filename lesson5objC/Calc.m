//
//  Calc.m
//  lesson5objC
//
//  Created by Иван Кочетков on 06.07.2021.
//

#import "Calc.h"

@implementation Calc

@synthesize funcNum = _funcNum;
@synthesize a = _a;
@synthesize b = _b;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.funcNum = _funcNum;
        self.a = 0;
        self.b = 0;
    }
    return self;
}

- (void)setA:(double)a{
    _a = a;
}

- (void)setB:(double)b{
    _b = b;
}

- (double) calculate: (NSUInteger) funcNum {
    switch (funcNum){
        case 1:
            return (self.a + self.b);
        case 2:
            return (self.a - self.b);
        case 3:
            return (self.a * self.b);
        case 4:
            if (self.b != 0){
                return (self.a / self.b);
            } else {
                printf("Error");
                return 0;
            }
    }
    return 0;
}
@end
