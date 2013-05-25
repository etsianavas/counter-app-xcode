//
//  helloViewController.m
//  hello
//
//  Created by holydiver on 5/22/13.
//  Copyright (c) 2013 holydiver. All rights reserved.
//

#import "helloViewController.h"

@interface helloViewController ()

@end

@implementation helloViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	//backgroung sizes for different screen sizes
	NSString *backgroundFilename = @"Background.png";
	CGRect screenRect = [[UIScreen mainScreen] bounds];
	if (screenRect.size.height == 568.0f)
	{
		backgroundFilename = [backgroundFilename stringByReplacingOccurrencesOfString:@".png" withString:@"-586h.png"];
	}
	
	//loading image
	self.imageView.image = [UIImage imageNamed:backgroundFilename];
	

	//custom label font
	label.font = [UIFont fontWithName:@"Calcula" size:72.0];
	//label background image
	label.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Screen.png"]];
	
	//images for custom button
	UIImage *btn = [UIImage imageNamed:@"Button.png"];
	UIImage *btnH = [UIImage imageNamed:@"ButtonHighlighted.png"];
	
	//custom button
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	
	[button addTarget:self action:@selector(Increase) forControlEvents:UIControlEventTouchUpInside];
	[button setBackgroundImage:btn forState:UIControlStateNormal];
	[button setBackgroundImage:btnH forState:UIControlStateHighlighted];
	[button setFrame:CGRectMake(122, 250, 65, 65)];
	//display custom button
	[self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//button touch down handler
- (IBAction)Increase
{
	count++;
	
	label.text = [NSString stringWithFormat:@"%i", count];
}

@end