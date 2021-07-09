//
//  main.m
//  lesson5objC
//
//  Created by Иван Кочетков on 05.07.2021.
//

#import <Foundation/Foundation.h>
#import "Calc.h"
#import "Bird.h"
#import "Flock.h"

typedef NS_ENUM(NSUInteger, Calculator) {
    CalculatorAddition = 1,
    CalculatorSubstraction = 2,
    CalculatorMultiplication = 3,
    CalculatorDivision = 4,
};



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Calculater
        
        Calc *calc = [[Calc alloc] init];
        
        printf("input 2 numbers for calculate \n");
        double aa = 0.0, bb = 0.0;
        
        scanf("%lf%""lf", &aa, &bb);
        [calc setA: aa];
        [calc setB: bb];
        NSLog(@"%lf",[calc calculate: CalculatorAddition]);
        NSLog(@"%lf",[calc calculate: CalculatorSubstraction]);
        NSLog(@"%lf",[calc calculate: CalculatorMultiplication]);
        NSLog(@"%lf",[calc calculate: CalculatorDivision]);
        [calc dealloc];
        
        
        //Birds AutoRelease
        
        Flock *flock = [[Flock alloc] init];
        
        Bird *bird1 = [[Bird alloc] initWithNumber: @1];
        Bird *bird2 = [[Bird alloc] initWithNumber: @2];
        Bird *bird3 = [[Bird alloc] initWithNumber: @3];
        Bird *bird4 = [[Bird alloc] initWithNumber: @4];
        
        NSArray *birds = [[NSArray alloc]initWithObjects:bird1, bird2, bird3, bird4, nil];
        
        [flock flokBirds:birds withFormation:@"wedge"];
        [flock release];
    }
    
    //Birds flock
    
    Flock *flock = [[Flock alloc] init];
    
    Bird *bird1 = [[Bird alloc] initWithNumber: @1];
    Bird *bird2 = [[Bird alloc] initWithNumber: @2];
    Bird *bird3 = [[Bird alloc] initWithNumber: @3];
    Bird *bird4 = [[Bird alloc] initWithNumber: @4];
    
    NSArray *birds = [[NSArray alloc]initWithObjects:bird1, bird2, bird3, bird4, nil];
    
    [flock flokBirds:birds withFormation:@"wedge"];
    
    [flock release];

    return 0;
}
