//
//  Animal.m
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import "Animal.h"
#import "Forest.h"

@implementation Animal

-(void)eat:(id)food{
    [self.stomach addObject:food];
    [[Forest sharedInstance] deleteResident:food];
}

@end
