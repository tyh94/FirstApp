//
//  Forest.m
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import "Forest.h"
#import "Grass.h"
#import "Predator.h"
#import "Herbivorous.h"

@implementation Forest

static id _instance;

+ (Forest *) sharedInstance
{
    if (!_instance)
    {
        return [[Forest alloc] init];
    }
    return _instance;
}

-(instancetype)init{
    self = [super init];
    if(self){
        self.forestResidents = [[NSMutableArray alloc] init];
        int nGrass = 5;
        int nPredator = 2;
        int nHerbivorous = 8;
        
        for(int i=0;i<nGrass;i++){
            Grass *grass = [[Grass alloc]initWithName:[NSString stringWithFormat:@"Grass%d",i]];
            [self.forestResidents addObject:grass];
        }
        for(int i=0;i<nPredator;i++){
            Predator *predator = [[Predator alloc]initWithWeight:(BOOL)arc4random()%100 + 50 andName:[NSString stringWithFormat:@"Predator%d",i]];
            [self.forestResidents addObject:predator];
        }
        for(int i=0;i<nHerbivorous;i++){
            Herbivorous *herbivorous = [[Herbivorous alloc]initWithName:[NSString stringWithFormat:@"Herbivorous%d",i]];
            [self.forestResidents addObject:herbivorous];
        }
        
    }
    return self;
}

@end
