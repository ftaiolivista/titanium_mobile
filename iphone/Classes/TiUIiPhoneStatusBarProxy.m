/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#ifdef USE_TI_UIIPHONESTATUSBAR

#import "TiUIiPhoneStatusBarProxy.h"
#import "TiUtils.h"

@implementation TiUIiPhoneStatusBarProxy

MAKE_SYSTEM_PROP(DEFAULT,UIStatusBarStyleDefault);
MAKE_SYSTEM_PROP(GRAY,UIStatusBarStyleDefault);
MAKE_SYSTEM_PROP(GREY,UIStatusBarStyleDefault);
MAKE_SYSTEM_PROP(OPAQUE_BLACK,UIStatusBarStyleBlackOpaque);
MAKE_SYSTEM_PROP(TRANSLUCENT_BLACK,UIStatusBarStyleBlackTranslucent);


MAKE_SYSTEM_PROP(ANIMATION_STYLE_NONE,UIStatusBarAnimationNone);
MAKE_SYSTEM_PROP(ANIMATION_STYLE_SLIDE,UIStatusBarAnimationSlide);
MAKE_SYSTEM_PROP(ANIMATION_STYLE_FADE,UIStatusBarAnimationFade);

-(NSNumber*)LIGHT_CONTENT
{
    if ([TiUtils isIOS7OrGreater]) {
        return [NSNumber numberWithInt:1];//UIStatusBarStyleLightContent
    } else {
        DebugLog(@"LIGHT_CONTENT is only valid on iOS7 and above. Returning TRANSLUCENT_BLACK")
        return [NSNumber numberWithInt:UIStatusBarStyleBlackTranslucent];
    }
}
@end

#endif
