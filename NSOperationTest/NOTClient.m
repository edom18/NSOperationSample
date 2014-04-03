
#import "NOTClient.h"

#import "NOTOperation.h"

static NSString *const NOTOperationIsFinished = @"isFinished";

@interface NOTClient ()

@property (strong, nonatomic) NOTOperation *operation;
@property (strong, nonatomic) NSOperationQueue *queue;

@end

@implementation NOTClient

- (instancetype)init
{
    if (self = [super init]) {
        self.operation = [[NOTOperation alloc] init];
        self.queue = [[NSOperationQueue alloc] init];
    }
    return self;
}

- (void)performMethod
{
    NSLog(@"%s perform", __FUNCTION__);
    
    [self.operation addObserver:self
                     forKeyPath:NOTOperationIsFinished
                        options:NSKeyValueObservingOptionNew
                        context:nil];
    
    [self.queue addOperation:self.operation];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    NSLog(@"KVO called.");
    
    if ([keyPath isEqualToString:NOTOperationIsFinished]) {
        NSLog(@"isFinished has been changed!");
    }
}

@end
