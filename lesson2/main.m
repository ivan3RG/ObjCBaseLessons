//
//  main.m
//  lesson2
//
//  Created by Иван Кочетков on 20.06.2021.
//

#import <Foundation/Foundation.h>

BOOL alphabet(NSString *letter){
    if ([letter  isGreaterThanOrEqualTo: @"a"] && [letter  isLessThanOrEqualTo: @"z"]){
        return YES;
    } else {
        return NO;
    }
}

int addition(int a, int b){
    return a + b;
}

int substraction(int a, int b){
    return a - b;
}

int multiplication(int a, int b){
    return a * b;
}

int division(int a, int b){
    return a / b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char letter[1];
        printf("Введите букву\n");
        scanf("%s", letter);
        BOOL chek = YES;
        if (letter != nil){
            NSString *letter2  = [NSString stringWithCString:&letter encoding:NSUTF8StringEncoding];
            letter2 = [letter2 lowercaseString];
            chek = alphabet(letter2);
            NSLog(chek ? @"Да, это - буква из английского алфавита" : @"Нет, эта буква не из английского алфавита");
        }
        int a = 0;
        int b = 0;
        printf("Введите 2 числа\n");
        scanf("%d""%d", &a, &b);
        int c = addition(a, b);
        int d = substraction(a, b);
        int e = multiplication(a, b);
        int f = division(a, b);
        NSLog(@"Result: \n addition = %i, \n substraction = %i, \n multiplication = %i, \n division = %i", c, d, e, f);
        
    }
    return 0;
}


