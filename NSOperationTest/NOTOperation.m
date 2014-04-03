
#import "NOTOperation.h"

@interface NOTOperation ()

@property (assign, nonatomic) BOOL isFinished;
@property (assign, nonatomic) BOOL isExecuting;

@end

@implementation NOTOperation

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key
{
    if ([key isEqualToString:@"isExecuting"] ||
        [key isEqualToString:@"isFinished"]) {
        return YES;
    }
    
    return [super automaticallyNotifiesObserversForKey:key];
}

- (void)start
{
    NSLog(@"%s start", __FUNCTION__);

    // 処理中設定
    self.isExecuting = YES;

    NSLog(@"スレッド処理開始");
    NSLog(@"isMainThread:%d Thread:%@", [NSThread isMainThread], [NSThread currentThread]);
    
    // 処理ウェイト
    [NSThread sleepForTimeInterval:2.0];
    
    // 処理中を解除
    self.isExecuting = NO;
    
    // 処理終了を設定
    self.isFinished = YES;
}

@end
