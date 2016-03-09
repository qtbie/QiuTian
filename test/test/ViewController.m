//
//  ViewController.m
//  test
//
//  Created by bqt on 16/3/9.
//  Copyright © 2016年 bqt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titlle;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.title = @"asdads";
    NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"lable" owner:self options:nil];
    UIView * view = arr[0];
    [self.view addSubview:view];
    
    NSArray *consw = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-200-[view]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)];
    NSArray *consh = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-300-[view(50)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)];
    [NSLayoutConstraint activateConstraints:consh];
    [NSLayoutConstraint activateConstraints:consw];
    [view addConstraints:consw];
    [view addConstraints:consh];
    //view.frame = CGRectMake(0, 100, 300, 100);
    
//    self.titlle.text = self.tabBarController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
