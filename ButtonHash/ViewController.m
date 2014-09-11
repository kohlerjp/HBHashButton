//
//  ViewController.m
//  ButtonHash
//
//  Created by John Kohler on 9/11/14.
//  Copyright (c) 2014 John Kohler. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+HBHashButton.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  UIButton *hashButton = [[UIButton alloc]initWithFrame:CGRectMake(70, 50, 190, 80)];
  [hashButton setObject:@"Programatic Button" forKey:@"value"];
  [hashButton addTarget:self action:@selector(btnHit:) forControlEvents:UIControlEventTouchUpInside];
  [hashButton setTitle:@"Programatic Button" forState:UIControlStateNormal];
  [hashButton setBackgroundColor:[UIColor blackColor]];
  [self.view addSubview:hashButton];
  
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidLayoutSubviews{
  [self.myButton setObject:@"StoryboardButton" forKey:@"value"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnHit:(id)sender{
  UIButton *button = (UIButton *) sender;
  NSLog(@"Button hash is: %@",[button objectForKey:@"value"]);
}

@end
