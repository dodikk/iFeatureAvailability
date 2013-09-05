#import "ESFeatureAvailabilityChecker.h"

@implementation ESFeatureAvailabilityChecker

+(BOOL)isOsNewerThan:( NSString* )featureVersion
{
    NSString* systemVersion = [ [ UIDevice currentDevice ] systemVersion ];
    NSComparisonResult comp = [ systemVersion compare: featureVersion ];
    
    return ( comp != NSOrderedAscending );
}

+(BOOL)isSocialFrameworkAvailable
{
    static NSString* const SOCIAL_FRAMEWORK_MIN_IOS_VERSION = @"6.0";
    return [ self isOsNewerThan: SOCIAL_FRAMEWORK_MIN_IOS_VERSION ];
}

+(BOOL)isSubscriptingAvailable
{
    static NSString* const SUBSCRIPTING_MIN_IOS_VERSION = @"6.0";
    return [ self isOsNewerThan: SUBSCRIPTING_MIN_IOS_VERSION ];
}

@end
