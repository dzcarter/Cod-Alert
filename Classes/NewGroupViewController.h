//
//  NewGroupViewController.h
//  Cod Alert
//
//  Created by Dan Carter on 11-02-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewGroupViewController : UIViewController {
	UITextField *groupTextField;
}

@property (nonatomic, retain) IBOutlet UITextField *groupTextField;

- (IBAction)addGroup;
@end
