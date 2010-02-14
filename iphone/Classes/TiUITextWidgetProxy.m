/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUITextWidgetProxy.h"
#import "TiUITextWidget.h"

#import "TiUtils.h"

@implementation TiUITextWidgetProxy

-(BOOL)hasText
{
	if ([self viewAttached])
	{
		return [(TiUITextWidget*)[self view] hasText];
	}
	NSString *value = [self valueForKey:@"value"];
	return value!=nil && [value length] > 0;
}

-(void)blur:(id)args
{
	if ([self viewAttached])
	{
		[[self view] performSelectorOnMainThread:@selector(resignFirstResponder) withObject:nil waitUntilDone:NO];
	}
}

-(void)focus:(id)args
{
	if ([self viewAttached])
	{
		[[self view] performSelectorOnMainThread:@selector(becomeFirstResponder) withObject:nil waitUntilDone:NO];
	}
}

-(BOOL)focused
{
	BOOL result=NO;
	if ([self viewAttached])
	{
		result = [(TiUITextWidget*)[self view] isFirstResponder];
	}

	return result;
}

@end
