
#import "NOTAppDelegate.h"

@implementation NOTAppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.client = [[NOTClient alloc] init];
    [self.client performMethod];
    return YES;
}

@end
