//
//  Grass.m
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import "Grass.h"

@implementation Grass


-(instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if(self){
        self.calories = 10;
    }
    return self;
}

@end
