//
//  main.m
//  IMEI-Validation-Demo
//
//  Created by Vincent on 1/26/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+IMEIValidation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *IMEIs = @[@"359255060206650", @"354398061324216", @"359255060206650", @"354419060187451", @"354395061814584", @"354398061324216", @"358767054278132", @"013718000329211", @"358843058419244", @"356953066760026", @"351981063000018", @"013422004648102", @"013345009828975", @"354394062713879", @"352008060465306", @"358753058456940", @"358027057393648", @"358840055053984", @"358811052528591", @"358766056762309", @"356953066760026", @"355410070289642"];
        for (NSString *IMEI in IMEIs) {
            NSLog(@"IMEI:%@ is %@",IMEI, [IMEI validateIMEI] ? @"valid" : @"invalid");
        }
    }
    return 0;
}
