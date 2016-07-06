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

int nGrass = 0;
int nPredator = 20;
int nHerbivorous = 0;

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
        
        for(int i=0;i<nGrass;i++){
            Grass *grass = [[Grass alloc]initWithName:[NSString stringWithFormat:@"Grass%d",i+1]];
            [self.forestResidents addObject:grass];
#ifdef DEBUG
            NSLog(@"%@",grass);
#endif
        }
        for(int i=0;i<nPredator;i++){
            Predator *predator = [[Predator alloc]initWithWeight:ABS((BOOL)arc4random()%100) + 50 andName:[NSString stringWithFormat:@"Predator%d",i+1]];
            [self.forestResidents addObject:predator];
#ifdef DEBUG
            NSLog(@"%@",predator);
#endif
        }
        for(int i=0;i<nHerbivorous;i++){
            Herbivorous *herbivorous = [[Herbivorous alloc]initWithName:[NSString stringWithFormat:@"Herbivorous%d",i+1]];
            [self.forestResidents addObject:herbivorous];
#ifdef DEBUG
            NSLog(@"%@",herbivorous);
#endif
        }
        
    }
    return self;
}

- (void)simulateDay{
    
}

- (void)deleteResident:(id)resident{
    if([self.forestResidents containsObject:resident]){
        [self.forestResidents removeObject:resident];
    }
}

@end
