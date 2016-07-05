//
//  Herbivorous.m
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import "Herbivorous.h"
#import "Grass.h"

@implementation Herbivorous

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if(self){
        //калории в начале жизни
        self.calories = 100;
    }
    return self;
}

-(BOOL)isHide{
    return (BOOL)arc4random()%2;
}

-(void)eat:(id)food{
    if ([food isKindOfClass:[Grass class]]) {
        self.calories +=((Grass*)food).calories;
    }
}

@end
