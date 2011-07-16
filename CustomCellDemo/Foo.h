//
//  Foo.h
//  CustomCellDemo
//
//  Created by Josh Smith on 6/20/11.
//  Copyright 2011 iJoshSmith. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Foo : NSObject {
    
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;

- (id)initWithName:(NSString *)name age:(NSUInteger)age;

@end
