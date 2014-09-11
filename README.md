HBHashButton
============

To install, download the soruce code.

In your project add the line
```
#import "UIButton+HBHashButton.h"
```
UIButtons can now act like a NSMutableDictionary

###Example
```
UIButton *button = [UIButton alloc]initWithFrame:CGRectMake:(0,0,100,90)];
[button setObject:@"Hello World" forKey:@"value"];
NSLog(@"Value is: %@",button objectForKey:@"value"])
```
