//
//  flock.h
//  lesson5objC
//
//  Created by Иван Кочетков on 08.07.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock: NSObject

-(void)flokBirds:(NSArray *)birds withFormation: (NSString *)formation;

@property (strong, nonatomic) NSString *formation;
@property (strong, nonatomic) NSArray *birds;

@end

NS_ASSUME_NONNULL_END
