//
//  main.m
//  objcLesson6
//
//  Created by Иван Кочетков on 10.07.2021.
//

#import <Foundation/Foundation.h>
#import "Arithmetic.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger a = 1;
        NSInteger b = 2;
        
        NSOperationQueue *custom_queue = [[NSOperationQueue alloc] init];
        [custom_queue addOperationWithBlock:^{
            NSLog(@"%s""%li", "NSOperation a+b=", (long)[Arithmetic beginWithAction: ActionTypeSum firstNumber: a secondNumber: b]);
        }];
        [custom_queue addOperationWithBlock:^{
            NSLog(@"%s""%li", "NSOperation a-b=", (long)[Arithmetic beginWithAction: ActionTypeSubstraction firstNumber: a secondNumber: b]);
        }];
        [custom_queue addOperationWithBlock:^{
            NSLog(@"%s""%li", "NSOperation a*b=", (long)[Arithmetic beginWithAction: ActionTypeMultiplication firstNumber: a secondNumber: b]);
        }];
        [custom_queue addOperationWithBlock:^{
            NSLog(@"%s""%li", "NSOperation a/b=", (long)[Arithmetic beginWithAction: ActionTypeDivision firstNumber: a secondNumber: b]);
        }];
        [custom_queue addOperationWithBlock:^{
            NSLog(@"%s""%li", "NSOperation a%b=", (long)[Arithmetic beginWithAction: ActionTypeRemainderOfTheDivision firstNumber: a secondNumber: b]);
        }];
        
        dispatch_queue_t global_queue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
        
        dispatch_async(global_queue, ^{
            NSLog(@"%s""%li", "a+b=", (long)[Arithmetic beginWithAction: ActionTypeSum firstNumber: a secondNumber: b]);
        });
        dispatch_async(global_queue, ^{
            NSLog(@"%s""%li", "a-b=", (long)[Arithmetic beginWithAction: ActionTypeSubstraction firstNumber: a secondNumber: b]);
        });
        dispatch_async(global_queue, ^{
            NSLog(@"%s""%li", "a*b=", (long)[Arithmetic beginWithAction: ActionTypeMultiplication firstNumber: a secondNumber: b]);
        });
        dispatch_async(global_queue, ^{
            NSLog(@"%s""%li", "a/b=", (long)[Arithmetic beginWithAction: ActionTypeDivision firstNumber: a secondNumber: b]);
        });
        dispatch_async(global_queue, ^{
            NSLog(@"%s""%li", "a%b=", (long)[Arithmetic beginWithAction: ActionTypeRemainderOfTheDivision firstNumber: a secondNumber: b]);
        });
        dispatch_sync(global_queue, ^{
            NSLog(@"%s""%li", "a+b=", (long)[Arithmetic beginWithAction: ActionTypeSum firstNumber: a secondNumber: b]);
        });
        dispatch_sync(global_queue, ^{
            NSLog(@"%s""%li", "a-b=", (long)[Arithmetic beginWithAction: ActionTypeSubstraction firstNumber: a secondNumber: b]);
        });
        dispatch_sync(global_queue, ^{
            NSLog(@"%s""%li", "a*b=", (long)[Arithmetic beginWithAction: ActionTypeMultiplication firstNumber: a secondNumber: b]);
        });
        dispatch_sync(global_queue, ^{
            NSLog(@"%s""%li", "a/b=", (long)[Arithmetic beginWithAction: ActionTypeDivision firstNumber: a secondNumber: b]);
        });
        dispatch_sync(global_queue, ^{
            NSLog(@"%s""%li", "a%b=", (long)[Arithmetic beginWithAction: ActionTypeRemainderOfTheDivision firstNumber: a secondNumber: b]);
        });
        
    }
    sleep(400);
    return 0;
}
