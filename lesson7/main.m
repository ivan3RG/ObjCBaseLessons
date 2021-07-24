//
//  main.m
//  lesson7
//
//  Created by Иван Кочетков on 20.07.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bool a = YES;
        NSMutableArray *elements = [NSMutableArray new];
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        path = [path stringByAppendingString:@"/userData.plist"];
        
        while (a == YES){
            char userAnswer;
            printf("Do you want to write new data? If yes, input ''Y'', please, if not - ''N'' \n");
            scanf("%s", &userAnswer);
            if (userAnswer == 'Y'){
                printf("Please write new data and press return \n");
                NSFileHandle *userInput = NSFileHandle.fileHandleWithStandardInput;
                NSData *userData = userInput.availableData;
                [elements addObject:userData];
            } else if (userAnswer == 'N') {
                printf("Thank you and goodbuy!");
                a = NO;
            } else {
                printf("You input is wrong, try again. \n");
            }
        }
        [elements writeToFile:path atomically:YES];
    }
    return 0;
}
