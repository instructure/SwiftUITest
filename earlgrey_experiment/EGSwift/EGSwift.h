#import <UIKit/UIKit.h>

//! Project version number for EGSwift.
FOUNDATION_EXPORT double EGSwiftVersionNumber;

//! Project version string for EGSwift.
FOUNDATION_EXPORT const unsigned char EGSwiftVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EGSwift/PublicHeader.h>

// Include of non-modular header inside framework module
#import "AppFramework/Action/GREYAction.h"
#import "AppFramework/Action/GREYActionBlock.h"
#import "AppFramework/Action/GREYActions.h"
#import "CommonLib/Matcher/GREYElementMatcherBlock.h"
#import "CommonLib/DistantObject/GREYHostApplicationDistantObject.h"
#import "CommonLib/Matcher/GREYMatcher.h"
#import "TestLib/AlertHandling/XCTestCase+GREYSystemAlertHandler.h"
#import "TestLib/EarlGreyImpl/EarlGrey.h"
