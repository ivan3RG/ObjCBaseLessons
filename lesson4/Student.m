//
//  Student.m
//  lesson4
//
//  Created by Иван Кочетков on 28.06.2021.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Vasya";
        _surname = @"Pupkin";
        _fullName = [NSString stringWithFormat: @"%@ %@", _name, _surname];
        _age = 27;
    }
    return self;
}

- (void)setAge:(NSInteger * _Nonnull)age {
    _age = age;
}

- (void)agePlus: (NSInteger * _Nonnull)ageOld {
    _age+=1;
}


@synthesize name = _name;
@synthesize surname = _surname;
@synthesize age = _age;

@end



