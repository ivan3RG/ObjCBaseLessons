//
//  Arithmetic.m
//  objcLesson6
//
//  Created by Иван Кочетков on 17.07.2021.
//

#import "Arithmetic.h"

@implementation Arithmetic

ArithmeticBlock sum = ^(NSInteger a, NSInteger b) {
    return a + b;
};

ArithmeticBlock substraction = ^(NSInteger a, NSInteger b) {
    return a - b;
};

ArithmeticBlock multiplication = ^(NSInteger a, NSInteger b) {
    return a * b;
};

ArithmeticBlock division = ^(NSInteger a, NSInteger b) {
    return a / b;
};

ArithmeticBlock remainderOfTheDivision = ^(NSInteger a, NSInteger b) {
    return a % b;
};

+ (NSInteger)beginWithAction:(ActionType)action firstNumber: (NSInteger)a secondNumber: (NSInteger)b{
    switch (action) {
        case ActionTypeSum:
            return sum(a, b);
            break;
        case ActionTypeDivision:
            return division(a, b);
            break;
        case ActionTypeMultiplication:
            return multiplication(a, b);
            break;
        case ActionTypeSubstraction:
            return substraction(a, b);
            break;
        case ActionTypeRemainderOfTheDivision:
            return remainderOfTheDivision(a, b);
            break;
    };
    return 0;
};

@end
