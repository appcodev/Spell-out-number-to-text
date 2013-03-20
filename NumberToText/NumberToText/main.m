//
//  main.m
//  NumberToText
//
//  Created by Chalermchon Samana on 3/20/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //input
        NSNumber *n1 = @12345;
        
        //number formatter use NSNumberFormatterSpellOutStyle
        NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
        [format setNumberStyle: NSNumberFormatterSpellOutStyle];
        
        //test output to text
        NSArray *listNumber = @[n1,@12.33,@-13333,@.88,@0.00033,@99,@600.009];
        for (NSNumber *n in listNumber) {
             NSLog(@"Number:%@ / Text:%@ ",n,[format stringFromNumber:n]);
        }
        
        
    }
    return 0;
}

