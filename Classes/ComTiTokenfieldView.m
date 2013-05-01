/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComTiTokenfieldView.h"
#import "TiUtils.h"

@implementation ComTiTokenfieldView


-(void)dealloc
{
    RELEASE_TO_NIL(square);
    [super dealloc];
}

-(void)initializeState
{
    UIView *s = [self square];
    [super initializeState];
}

-(UIView*)square
{
    if (square==nil)
    {
        square = [[TITokenField alloc] init];
        [square layoutTokensAnimated:FALSE];
        [self addSubview:square];
    }
    return square;
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (square!=nil)
    {
        [TiUtils setView:square positionRect:bounds];
    }
}

-(void)setColor_:(id)color
{
    UIColor *c = [[TiUtils colorValue:color] _color];
    UIView *s = [self square];
    s.backgroundColor = c;
}

@end
