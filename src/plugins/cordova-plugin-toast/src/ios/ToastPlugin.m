/********* ToastPlugin.m Cordova Plugin Implementation *******/

#import "ToastPlugin.h"

@implementation ToastPlugin

- (void)pong:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult* pluginResult = [
		CDVPluginResult resultWithStatus:CDVCommandStatus_OK
		messageAsString:@"ok"
	];
    NSString* content = [command.arguments objectAtIndex:0];

    UIAlertController *alert = [
    	UIAlertController
    	alertControllerWithTitle:content
    	message:@""
    	preferredStyle:UIAlertControllerStyleAlert
    ];

	[alert addAction:[
		UIAlertAction actionWithTitle:@"OK"
		style:UIAlertActionStyleDefault
		handler:^(UIAlertAction *action) {
		}
	]];

    [self.viewController presentViewController:alert animated:YES completion:nil];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
