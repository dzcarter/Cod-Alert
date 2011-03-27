//
//  Cod_AlertAppDelegate.h
//  Cod Alert
//
//  Created by Dan Carter on 11-02-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cod_AlertAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *mainNavigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UINavigationController *mainNavigationController;
@end

