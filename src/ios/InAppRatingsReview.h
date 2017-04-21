#import <Cordova/CDV.h>
#import <StoreKit/StoreKit.h>

@interface InAppRatingsReview :CDVPlugin {
    
}

- (void) requestReview:(CDVInvokedUrlCommand*)command;
@end
