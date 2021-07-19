//
//  Arithmetic.h
//  objcLesson6
//
//  Created by Иван Кочетков on 17.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSInteger (^ArithmeticBlock) (NSInteger, NSInteger);

typedef enum ActionType {
    ActionTypeSum,
    ActionTypeSubstraction,
    ActionTypeMultiplication,
    ActionTypeDivision,
    ActionTypeRemainderOfTheDivision
} ActionType ;

@interface Arithmetic : NSObject

+ (NSInteger)beginWithAction:(ActionType)action firstNumber: (NSInteger)a secondNumber: (NSInteger)b;

@end

NS_ASSUME_NONNULL_END
