#import "R.h"


@implementation RLocalizableStrings
- (NSString*)commonFormattingLocaleIos { return SDLocalizedStringFromTable(@"common_formatting_locale_ios", @"Localizable.strings"); }
@end


@interface RStrings ()
@property (nonatomic, strong) RLocalizableStrings* localizable;
@end

@implementation RStrings

- (RLocalizableStrings*)localizable
{
	if (!_localizable)
	{
		_localizable = [RLocalizableStrings new];
	}
	return _localizable;
}

@end



@implementation RImages

@end



@implementation RStyle
- (void)applyTo:(id)object { SDThemeManagerApplyStyle(self.identifier, object); }
@end



@implementation RThemes

@end



@implementation RMain
- (__kindof UIViewController*)instantiateInitialViewController { return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController]; }
@end


@interface RStoryboards ()
@property (nonatomic, strong) RMain* main;
@end

@implementation RStoryboards

- (RMain*)main
{
	if (!_main)
	{
		_main = [RMain new];
	}
	return _main;
}

@end



@implementation RSegue
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender { [sourceViewController performSegueWithIdentifier:self.identifier sender:sender]; }
@end



@implementation RSegues

@end


@interface R ()
@property (nonatomic, strong) RStrings* string;
@property (nonatomic, strong) RImages* image;
@property (nonatomic, strong) RThemes* theme;
@property (nonatomic, strong) RStoryboards* storyboard;
@property (nonatomic, strong) RSegues* segue;
@end

@implementation R

+ (instancetype)sharedInstance
{	 
	static dispatch_once_t pred;
 	static id sharedInstance_ = nil;
 
 	dispatch_once(&pred, ^{
 		sharedInstance_ = [[self alloc] init];
 	});
 
 	return sharedInstance_;

}

+ (RStrings*)string { return [[R sharedInstance] string]; }
+ (RImages*)image { return [[R sharedInstance] image]; }
+ (RThemes*)theme { return [[R sharedInstance] theme]; }
+ (RStoryboards*)storyboard { return [[R sharedInstance] storyboard]; }
+ (RSegues*)segue { return [[R sharedInstance] segue]; }

- (RStrings*)string
{
	if (!_string)
	{
		_string = [RStrings new];
	}
	return _string;
}

- (RImages*)image
{
	if (!_image)
	{
		_image = [RImages new];
	}
	return _image;
}

- (RThemes*)theme
{
	if (!_theme)
	{
		_theme = [RThemes new];
	}
	return _theme;
}

- (RStoryboards*)storyboard
{
	if (!_storyboard)
	{
		_storyboard = [RStoryboards new];
	}
	return _storyboard;
}

- (RSegues*)segue
{
	if (!_segue)
	{
		_segue = [RSegues new];
	}
	return _segue;
}

@end


