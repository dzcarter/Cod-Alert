//
//  GroupViewController.h
//  Cod Alert
//
//  Created by Dan Carter on 11-02-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GroupViewController : UIViewController {
	UITextField *messageField;
}

@property (nonatomic, retain) IBOutlet UITextField *messageField;

- (IBAction)sendMessage;
@end
