//
//  MainWindowController.h
//  SimpleLayeredDrawer
//
//  Created by Wade Sweatt on 5/11/13.
//  Copyright (c) 2013 J. Wade Sweatt. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import <Cocoa/Cocoa.h>

@interface MainWindowController : NSWindowController <NSWindowDelegate>
@property (weak) IBOutlet NSTextField *titleBarLabel;
@end
