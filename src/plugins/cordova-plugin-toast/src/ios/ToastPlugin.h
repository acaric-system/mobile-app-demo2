/********* ToastPlugin.h Cordova Plugin *******/

#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>

@interface ToastPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)pong:(CDVInvokedUrlCommand*)command;

@end
