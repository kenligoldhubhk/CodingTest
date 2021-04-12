#import "AssignmentPlugin.h"
#if __has_include(<assignment/assignment-Swift.h>)
#import <assignment/assignment-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "assignment-Swift.h"
#endif

@implementation AssignmentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAssignmentPlugin registerWithRegistrar:registrar];
}
@end
