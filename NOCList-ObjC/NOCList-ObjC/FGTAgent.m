//
//  FGTAgent.m
//  NOCList-ObjC
//
//  Created by FGT MAC on 9/21/20.
//

#import "FGTAgent.h"

@implementation FGTAgent

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised{
    
    self = [super init];
    
    if (self){
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt: accessLevel];
        _compromised = [NSNumber numberWithInt: compromised];
    };
    

    return self;
}

@end
