//
//  helloViewController.h
//  hello
//
//  Created by holydiver on 5/22/13.
//  Copyright (c) 2013 holydiver. All rights reserved.
//

#import <UIKit/UIKit.h>

int count;

@interface helloViewController : UIViewController
{
	IBOutlet UILabel *label;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


-(IBAction)Increase;

@end
