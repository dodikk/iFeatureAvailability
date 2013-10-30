#import <Foundation/Foundation.h>

@interface ESFeatureAvailabilityChecker : NSObject

+(BOOL)isSocialFrameworkAvailable;
+(BOOL)isSubscriptingAvailable;

+(BOOL)isPathBuilderAvailable;
+(BOOL)isMapCameraAvailable;
+(BOOL)isPolyLineMapOverlayRendererAvailable;

@end
