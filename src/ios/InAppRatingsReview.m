#import "InAppRatingsReview.h"

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation InAppRatingsReview
- (void) pluginInitialize {
    NSLog(@"Initializing InAppRatingsReview plugin");
}

- (void) requestReview:(CDVInvokedUrlCommand*)command{
    if(SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.3")) {
        [SKStoreReviewController requestReview];
    }
}
@end