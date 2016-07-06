//
//  Predator.m
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import "Predator.h"
#import "Herbivorous.h"

@implementation Predator

-(NSString *)description{
    return [NSString stringWithFormat:@"Predator with name: %@ with weight: %d and calories: %d", self.name, self.weight, self.calories];
}

- (instancetype)initWithWeight:(int)weight andName:(NSString *)name{
    self = [super initWithName:name];
    if(self){
        self.calories = 50;
        self.weight = weight;
    }
    return self;
}

- (BOOL)isProtect{
    return (BOOL)arc4random()%2;
}

-(void)eat:(id)food{
    if ([food isKindOfClass:[Herbivorous class]]) {
        if ([food respondsToSelector:@selector(isHide)]) {
            if ([food performSelector:@selector(isHide)]) {
                self.calories +=((Herbivorous*)food).calories/2;
                [super eat:food];
            }
        }
    } else if ([food isKindOfClass:[Predator class]]){
        if(self.weight > ((Predator*)food).weight && !((Predator*)food).isProtect){
            self.calories +=((Predator*)food).calories/2;
            [super eat:food];
        }
    }
}


@end
