//
//  ViewController.m
//  AlertControllerExample
//
//  Created by AppsbeeTechnology on 27/11/15.
//  Copyright (c) 2015 Ranjan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *arrActionList;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrActionList = [NSArray arrayWithObjects:@"Home", @"Dashboard", @"About Us",@"Contact Us", @"Sign In",nil];
}

-(IBAction)buttonClicked:(id)sender{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Gender:"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    for (NSString *strObj in arrActionList) {
        NSString *strActionTitle = strObj;
        UIAlertAction *action = [UIAlertAction actionWithTitle:strActionTitle
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction *action) {
                                                           NSString *title = action.title;
                                                           NSLog(@"%@",title);
                                                           //you can check here on what button is pressed using title
                                                       }];
        [alertController addAction:action];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                         }];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
