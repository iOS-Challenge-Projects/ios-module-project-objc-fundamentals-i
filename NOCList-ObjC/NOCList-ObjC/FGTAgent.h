//
//  FGTAgent.h
//  NOCList-ObjC
//
//  Created by FGT MAC on 9/21/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;


@end

NS_ASSUME_NONNULL_END
