#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SDLocalizationLogger.h"
#import "SDLocalizationManager.h"
#import "SDLocalizationManagerModels.h"
#import "GTYFileManager.h"
#import "NSLocale+Glotty.h"

FOUNDATION_EXPORT double GlottyVersionNumber;
FOUNDATION_EXPORT const unsigned char GlottyVersionString[];

