//
//  main.m
//  firstLessonObjC
//
//  Created by Иван Кочетков on 17.06.2021.
//

#import <Foundation/Foundation.h> //First lesson of Obj C

int main(int argc, const char * argv[]) {
    
    int numberOfVariant = 0; //number of menu item
    
    bool exit = false;
    
    //number variables
    int first = 0;
    int second = 0;
    int third = 0;
    
    printf("First number: ");
    scanf("%d", &first);
    
    printf("Second number: ");
    scanf("%d", &second);
    
    //menu
    while (exit != true) {
        NSLog(@"%s", "Select operation, then press return(1 - addition, 2 - subtraction, 3 - division, 4 - /, 5 - average of 3 numbers, 6 = exit2");
        scanf("%d", &numberOfVariant);
        switch(numberOfVariant) {
            case 1:
                NSLog(@"%s, %d", "first + second = ", first + second);
                break;
            case 2:
                NSLog(@"%s, %d", "first - second = ", first - second);
                break;
            case 3:
                NSLog(@"%s, %d", "first * second = ", first * second);
                break;
            case 4:
                NSLog(@"%s, %d", "first + second = ", first / second);
                break;
            case 5:
                printf("input third value");
                scanf("%d", &third);
                NSLog(@"%s, %d", "(first + second + third)/3 = ", (first + second + third)/3);
                break;
            case 6:
                printf("exit");
                exit = true;
                break;
            default:
                NSLog(@"%s", "Wrong input");
        }
    }
    return 0;
}
