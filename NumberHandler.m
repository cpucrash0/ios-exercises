//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger numberTimesTwo = [number integerValue];
    numberTimesTwo *=2;
    NSNumber *NewNumber = [NSNumber numberWithInteger:numberTimesTwo];
    
    
    return NewNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *myNumbers =[NSMutableArray array];
    for (NSInteger newNumber = number; newNumber <= otherNumber; newNumber++) {
        [myNumbers addObject:[NSNumber numberWithInteger:newNumber]];
    }
    return myNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger littleNum = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger newInt = [number integerValue];
        if (newInt < littleNum)
            littleNum = newInt;
    }
    return littleNum;
}
@end
