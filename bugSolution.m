```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    //ARC handles this automatically; No manual release is needed
    self.myString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
}
@end

//Manual Memory management (commented out, use only if not using ARC)
//@implementation MyClass
//@- (void)someMethod {
//    self.myString = [[NSString alloc] initWithString:@"Hello"];
//    // ... some code ...
//    [self.myString release]; // Manually release the old string
//    self.myString = nil; // Set the property to nil
//}
//@end
```