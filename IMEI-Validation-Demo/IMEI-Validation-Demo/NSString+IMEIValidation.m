//
//  NSString+IMEIValidation.m
//  IMEI-Validation-Demo
//
//  Created by Vincent on 1/26/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import "NSString+IMEIValidation.h"

@implementation NSString (IMEIValidation)
- (BOOL)validateIMEI {
    if (![self consistsOf15NumbersOnly]) {
        return NO;
    }
    NSUInteger sum = 0;
    for (int i = 0; i < self.length - 1; i ++) {
        NSUInteger value = [[self substringWithRange:NSMakeRange(i, 1)] integerValue];
        if (i % 2 == 0) {
            ;
            sum += value;
        } else {
            sum += (value * 2 / 10 + value * 2 % 10);
        }
    }
    NSUInteger mod10 = sum % 10;
    NSUInteger checkDigit = [[self substringWithRange:NSMakeRange(self.length - 1, 1)] integerValue];
    
    return (mod10 + checkDigit) % 10 == 0;
}

- (BOOL)consistsOf15NumbersOnly {
    NSString *regex = @"^\\d{15}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [predicate evaluateWithObject:self];
}
@end
