//
//  main.m
//  lesson3
//
//  Created by Иван Кочетков on 23.06.2021.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, Gander) {
    GanderMale,
    GanderFemale
};

struct Human {
    NSString *name;
    NSInteger age;
    Gander gander;
};

typedef struct Human Human;

typedef NS_ENUM(NSUInteger, Calculator) {
    CalculatorAddition = 1,
    CalculatorSubstraction = 2,
    CalculatorMultiplication = 3,
    CalculatorDivision = 4,
};

double calc(Calculator calculate, double a, double b) {
    switch (calculate){
        case CalculatorAddition:
            return (a + b);
        case CalculatorSubstraction:
            return (a - b);
        case CalculatorMultiplication:
            return (a * b);
        case CalculatorDivision:
            if (b != 0){
                return (a / b);
            } else {
                printf("Error");
                return 0;
            }
    }
}

NSMutableArray* value(NSMutableArray* values) {
    //NSMutableArray *userValues = [NSMutableArray arrayWithObjects: nil];
    char letter[40];
    printf("input string (maximum of 40 characters)");
    scanf("%s", letter);
    NSString *userString = [NSString stringWithCString: &letter encoding:NSUTF8StringEncoding];
    [values addObject: userString];
    return values;
}

int forLog(NSMutableArray* values){         //For log
    printf("for log: \n");
    for (int j = 0; j < [values  count]; j++) {
        NSLog(@"%@", values[j]);
    }
    return 0;
}

int whileLog(NSMutableArray* values){       //While log
    printf("while log: \n");
    int j = 0;
    while (j < [values count]) {
        NSLog(@"%@", values[j]);
        j++;
    }
    return 0;
}

int doWhileLog(NSMutableArray* values){
    printf("do-while log: \n");
    int j = 0;
    if (j > 0){
        do {
            NSLog(@"%@", values[j]);
            j++;
        } while (j < [values count]);
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //User strings
        NSMutableArray *userValues = [NSMutableArray new];
        int i = 0;
        printf("input count of strings \n");
        scanf("%d", &i);
        for (int j = 0; j < i; j++) {
            value(userValues);
        }
        forLog(userValues);
        whileLog(userValues);
        doWhileLog(userValues);
        
        //Calculator
        double a = 0, b = 0;
        Calculator calculate = CalculatorAddition;
        printf("input 2 numbers for calculate \n");
        scanf("%lf""%lf", &a, &b);
        NSLog(@"addiction result = %lf", calc(calculate, a, b));
        calculate = CalculatorDivision;
        NSLog(@"division result = %lf", calc(calculate, a, b));
        calculate = CalculatorSubstraction;
        NSLog(@"substraction result = %lf", calc(calculate, a, b));
        calculate = CalculatorMultiplication;
        NSLog(@"multiplication result = %lf", calc(calculate, a, b));
        
        //Humans
        Human human1;
        human1.age = 27;
        human1.name = @"John";
        human1.gander = GanderMale;
        
        Human human2;
        human2.age = 22;
        human2.name = @"Tanya";
        human2.gander = GanderFemale;
        
        NSLog(@"%@", human1.name);
        NSLog(@"%ld", (long)human1.age);
        NSLog(human1.gander == 0 ? @"Man" : @"Woman");
        NSLog(@"%@", human2.name);
        NSLog(@"%ld", (long)human2.age);
        NSLog(human2.gander == 0 ? @"Man" : @"Woman");
    }
    return 0;
}


