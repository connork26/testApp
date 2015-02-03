//
//  ViewController.m
//  firstProject
//
//  Created by student on 2/2/15.
//  Copyright (c) 2015 SSU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSLog(@"Loaded");
    NSURL * url = [NSURL URLWithString:@"http://static01.nyt.com/images/2015/02/08/education/08football-1/08football-1-largeHorizontal375.jpg"];
    NSData * data = [NSData dataWithContentsOfURL:url];
    UIImage * image = [UIImage imageWithData:data];
    
    UIImageView * footballPic = [[UIImageView alloc] initWithImage:image];
    [self.view  addSubview:footballPic];
    
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    CGRect imageFrame = CGRectMake(100, 200, 150, 150);
    
    footballPic.frame = imageFrame;
    
    CGRect buttonFrame = CGRectMake((frame.size.width - 100) / 2, 400, 100, 35);
    UIButton * button = [[UIButton alloc] initWithFrame:buttonFrame];
    [self.view addSubview:button];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void) buttonPressed:(UIButton *) sender {
    NSLog(@"Button pressed");
    [sender setBackgroundColor:[UIColor blueColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
