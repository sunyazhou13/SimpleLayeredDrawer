//
//  RVPoint.m
//  SimpleLayeredDrawer
//
//  Created by Wade Sweatt on 1/10/13.
//  Copyright (c) 2013 J. Wade Sweatt. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import "RVPoint.h"

@implementation RVPoint

- (id)init
{
    self = [super init];
    if (self) {
        self.point = NSZeroPoint;
        self.frontControlPoint = NSZeroPoint;
        self.behindControlPoint = NSZeroPoint;
        self.frontControlPointSelected = NO;
        self.behindControlPointSelected = NO;
    }
    return self;
}

- (id) initWithPoint:(NSPoint)point {
    self = [super init];
    if (self) {
        self.point = point;
        self.frontControlPoint = NSZeroPoint;
        self.behindControlPoint = NSZeroPoint;
        self.frontControlPointSelected = NO;
        self.behindControlPointSelected = NO;
    }
    return self;
}

- (BOOL) hasPoint {
    if (NSEqualPoints(self.point, NSZeroPoint)) {
        return NO;
    }
    return YES;
}

- (BOOL) hasFrontControlPoint {
    if (NSEqualPoints(self.frontControlPoint, NSZeroPoint)) {
        return NO;
    }
    return YES;
}

- (BOOL) hasBehindControlPoint {
    if (NSEqualPoints(self.behindControlPoint, NSZeroPoint)) {
        return NO;
    }
    return YES;
}

- (void) copyPropertiesFrom:(RVPoint *)other {
	self.point = other.point;
    self.frontControlPoint = other.frontControlPoint;
    self.behindControlPoint = other.behindControlPoint;
    self.frontControlPointSelected = other.frontControlPointSelected;
    self.behindControlPointSelected = other.behindControlPointSelected;
    self.parentPath = self.parentPath;
}

- (id) copyWithZone:(NSZone *)zone {
	RVPoint *copy = [[[self class] allocWithZone:zone] init];
	[copy copyPropertiesFrom:self];
	return copy;
}

- (NSString *) description {
    return [NSString stringWithFormat:@"\n%p %@ fcp? %@ bcp? %@", self, NSStringFromPoint(self.point), self.hasFrontControlPoint?@"YES":@"NO", self.hasBehindControlPoint?@"YES":@"NO"];
}

@end
