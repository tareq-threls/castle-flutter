#import "CastlePlugin.h"
#if __has_include(<castle/castle-Swift.h>)
#import <castle/castle-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "castle-Swift.h"
#endif

@implementation CastlePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCastlePlugin registerWithRegistrar:registrar];
}
@end
