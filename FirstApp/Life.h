//
//  Life.h
//  FirstApp
//
//  Created by admin on 05/07/16.
//  Copyright © 2016 tanya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Life : NSObject
//калории
@property int calories;
@property (readonly) NSString *name;

-(instancetype)initWithName:(NSString *)name;

@end
