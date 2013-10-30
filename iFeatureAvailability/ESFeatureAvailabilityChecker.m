#import "ESFeatureAvailabilityChecker.h"

@implementation ESFeatureAvailabilityChecker

+(BOOL)isOsNewerThan:( NSString* )featureVersion
{
    NSString* systemVersion = [ [ UIDevice currentDevice ] systemVersion ];
    NSComparisonResult comp = [ systemVersion compare: featureVersion ];
    
    return ( comp != NSOrderedAscending );
}

+(BOOL)isAvailableSinceIOS6
{
    static NSString* const SOCIAL_FRAMEWORK_MIN_IOS_VERSION = @"6.0";
    return [ self isOsNewerThan: SOCIAL_FRAMEWORK_MIN_IOS_VERSION ];
}

+(BOOL)isAvailableSinceIOS7
{
    static NSString* const SOCIAL_FRAMEWORK_MIN_IOS_VERSION = @"7.0";
    return [ self isOsNewerThan: SOCIAL_FRAMEWORK_MIN_IOS_VERSION ];
}

+(BOOL)isSocialFrameworkAvailable
{
    return [ self isAvailableSinceIOS6 ];
}

+(BOOL)isSubscriptingAvailable
{
    return [ self isAvailableSinceIOS6 ];
}

+(BOOL)isPathBuilderAvailable
{
    return [ self isAvailableSinceIOS7 ];
}

+(BOOL)isMapCameraAvailable
{
    return [ self isAvailableSinceIOS7 ];
}

+(BOOL)isPolyLineMapOverlayRendererAvailable
{
    return [ self isAvailableSinceIOS7 ];
}

@end
