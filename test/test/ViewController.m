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

    
    NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"lable" owner:self options:nil];
    UIView * view = [arr firstObject];
    
    [self.view addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSArray *consw = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-200-[view(100)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)];
    [NSLayoutConstraint activateConstraints:consw];

    NSArray *consh = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[view]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)];
    [NSLayoutConstraint activateConstraints:consh];
    
//    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
//    image.frame = self.navigationController.navigationBar.bounds; //CGRectMake(0, 0, self.view.frame.size.width, 40);
//    [self.navigationController.navigationBar insertSubview:image atIndex:1];
    [self.view addConstraints:consw];
    [self.view addConstraints:consh];
    //view.frame = CGRectMake(0, 100, 300, 100);
    
//    self.titlle.text = self.tabBarController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
