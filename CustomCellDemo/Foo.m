//
//  Foo.m
//  CustomCellDemo
//
//  Created by Josh Smith on 6/20/11.
//  Copyright 2011 iJoshSmith. All rights reserved.
//

#import "Foo.h"


@implementation Foo

@synthesize name, age;

- (void)dealloc {
    [name release];
    [super dealloc];
}

- (id)initWithName:(NSString *)newName age:(NSUInteger)newAge
{
    if ((self = [super init]) != nil)
    {
        self.name = newName;
        self.age = newAge;
    }
    return self;
}

@end
