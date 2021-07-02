//
//  main.m
//  lesson4
//
//  Created by Иван Кочетков on 28.06.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Student *vasya = [Student new];
    NSLog( @"%@ ""%i"" years",[vasya fullName], [vasya age]);
    [vasya agePlus: vasya.age];
    
    NSLog( @"%@ ""%i"" years",[vasya fullName], [vasya age]);
    
    return 0;
}
