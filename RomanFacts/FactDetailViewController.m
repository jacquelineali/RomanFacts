//
//  ViewController.m
//  RomanFacts
//
//  Created by Jacqueline Ali on 12/27/15.
//  Copyright © 2015 Jacqueline Ali Cordoba. All rights reserved.
//

#import "FactDetailViewController.h"
#import "FactCategory.h"
#import "FactEncyclopedia.h"
#import "ColorWheel.h"

@interface FactDetailViewController ()

@end

@implementation FactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.factCategory) {
        // Do any additional setup after loading the view, typically from a nib.
        self.colorWheel = [[ColorWheel alloc] init];
        
        // Set random color
        UIColor *newColor = [self.colorWheel randomColor];
        self.view.backgroundColor = newColor;
        self.funFactButton.tintColor = newColor;
        
        // Generate new fun fact from category
        self.funFactLabel.text = [self.factCategory randomFact];
        
        // Update Navigation Bar Text
        self.navBar.title = [self.factCategory.categoryData objectForKey:kCategoryTitle];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showFunFact {
    UIColor *newColor = [self.colorWheel randomColor];
    self.view.backgroundColor = newColor;
    self.funFactButton.tintColor = newColor;
    self.funFactLabel.text = [self.factCategory randomFact];
}

@end
