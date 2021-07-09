//
//  Calc.h
//  lesson5objC
//
//  Created by Иван Кочетков on 06.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calc : NSObject

@property NSUInteger funcNum;
@property (nonatomic) double a;
@property double b;

- (double) calculate: (NSUInteger) funcNum;

@end


NS_ASSUME_NONNULL_END
