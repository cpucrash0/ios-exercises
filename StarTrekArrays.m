//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *returnArray = @[];
    /* WORK HERE */
    returnArray = [characterString componentsSeparatedByString:@";"];
    return returnArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *returnString = @"";
    /* WORK HERE */
    returnString = [characterArray componentsJoinedByString:@";"];
    return returnString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
   
   
    /* WORK HERE */
    NSMutableArray *trekSort = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:0 ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [trekSort sortUsingDescriptors:@[sortDescriptor]];
    
    return trekSort;
    
    
   
   
}
- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSArray *returnArray = @[];
    /* WORK HERE */
    
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    returnArray =[characterArray filteredArrayUsingPredicate:containsWorf];
    for (NSString *task in characterArray) {
        NSLog(@"%@", task);
        
    }
    return returnArray;
}


@end
