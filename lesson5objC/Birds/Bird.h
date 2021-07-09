//
//  Bird.h
//  lesson5objC
//
//  Created by Иван Кочетков on 08.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) NSNumber *number;

- (instancetype) initWithNumber: (NSNumber *)number;

@end

NS_ASSUME_NONNULL_END
