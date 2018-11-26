//
//  main.m
//  MacOS-ScreenLocker
//
//  Created by Jordan, Kenneth {BIS} on 12/7/17.
//  Copyright © 2017 Jordan, Kenneth {BIS}. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

int main() {
    NSBundle *bundle = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];
    Class principalClass = [bundle principalClass];
    id instance = [[principalClass alloc] init];
    
    [instance performSelector:@selector(_lockScreenMenuHit:) withObject:nil afterDelay:0];
    
    return 0;
}
