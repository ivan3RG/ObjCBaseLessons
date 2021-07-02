//
//  Student.h
//  lesson4
//
//  Created by Иван Кочетков on 28.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
- (NSInteger)agePlus: (NSInteger * _Nonnull)ageOld;
    
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* surname;
@property (nonatomic, readonly) NSString* fullName;
@property (nonatomic, readonly) NSInteger* age;

    

@end

NS_ASSUME_NONNULL_END
