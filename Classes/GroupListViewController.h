//
//  GroupListViewController.h
//  Cod Alert
//
//  Created by Dan Carter on 11-02-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GroupListViewController : UITableViewController {
	NSArray *groups;
}

@property (nonatomic, retain) NSArray *groups;

- (void)addGroup;

@end
