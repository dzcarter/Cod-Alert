//
//  NewGroupViewController.m
//  Cod Alert
//
//  Created by Dan Carter on 11-02-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewGroupViewController.h"


@implementation NewGroupViewController
@synthesize groupTextField;
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
		UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelPressed)];
		self.navigationItem.leftBarButtonItem = cancelItem;
		[cancelItem release];
		DLog(@"cancel item: %@", cancelItem);
    }
    return self;
}

- (void)cancelPressed
{
	[self dismissModalViewControllerAnimated:YES];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	[self.groupTextField becomeFirstResponder];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction)addGroup
{
	NSLog(@"submit add group");
	[self.groupTextField resignFirstResponder];
	dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
	dispatch_async(queue, ^{
		NSString *urlString = @"http://www.google.ca";
		NSURL *url = [NSURL URLWithString:urlString];
		NSURLRequest *request = [NSURLRequest requestWithURL:url];
		
		NSURLResponse *response;
		NSError *error;
		NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
		NSString *returnString = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
		NSLog(@"Returned Data %@", returnString);
	});
}

#pragma mark -
#pragma mark UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
	switch (buttonIndex) {
		case 0:
			
			break;
		case 1:
			
			break;
	}
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[groupTextField release];
    [super dealloc];
}


@end
