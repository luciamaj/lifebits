#import <UIKit/UIKit.h>
@import Glotty;
@import Giotto;

@interface RLocalizableStrings: NSObject
/**
key: "common_formatting_locale_ios"

Undefined: "it_IT"
*/
- (NSString*)commonFormattingLocaleIos;
@end


@interface RStrings: NSObject
- (RLocalizableStrings*)localizable;
@end


@interface RImages: NSObject
- (UIImage*)calendar;
- (UIImage*)diary;
@end


@interface RStyle: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)applyTo:(id)object;
@end


@interface RThemes: NSObject
@end


@interface RMain: NSObject
- (__kindof UIViewController*)instantiateInitialViewController;
@end


@interface RStoryboards: NSObject
- (RMain*)main;
@end


@interface RSegue: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender;
@end


@interface RSegues: NSObject
@end


@interface R: NSObject
+ (RStrings*)string;
+ (RImages*)image;
+ (RThemes*)theme;
+ (RStoryboards*)storyboard;
+ (RSegues*)segue;
@end


