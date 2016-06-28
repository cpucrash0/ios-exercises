//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    
    /* WORK HERE */
    
    id trekFavoriteDrink = characterDictionary[@"favorite drink"];
    if (trekFavoriteDrink !=nil && [trekFavoriteDrink isKindOfClass: [NSString class]]){ NSLog(@"favorite Drink is %@",trekFavoriteDrink);
        
    }
    
    
    
    return trekFavoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (NSDictionary *dictionary in charactersArray) {
        NSString *favoriteDrink = dictionary[@"favorite drink"];
            [array addObject:favoriteDrink];
        }
    
        return array;
    }
    



- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *trekDictionary = [characterDictionary mutableCopy];
    [trekDictionary setObject:@"I'll be back!" forKey:@"quote"];
    NSLog(@"My new quote: %@",trekDictionary);
    
    return trekDictionary;
}

@end
