//
//  NSObject.h
//  MakeFriends
//
//  Created by kai on 15/8/31.
//
//

#import <Foundation/Foundation.h>

typedef void (^DeallocCallback)(void);

@interface NSObject(Deallocing)

+ (void)hookNSObjectDealloc;

- (void)setDeallocCallback:(DeallocCallback)callback;

- (DeallocCallback)deallocCallback;

@end
