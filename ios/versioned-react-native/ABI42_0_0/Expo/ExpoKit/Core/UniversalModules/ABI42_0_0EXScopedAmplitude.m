// Copyright © 2019-present 650 Industries. All rights reserved.

#if __has_include(<ABI42_0_0EXAmplitude/ABI42_0_0EXAmplitude.h>)
#import "ABI42_0_0EXScopedAmplitude.h"
#import <Amplitude/Amplitude.h>

@interface ABI42_0_0EXAmplitude (Protected)

- (Amplitude *)amplitudeInstance;

@end

@interface ABI42_0_0EXScopedAmplitude ()

@property (strong, nonatomic) NSString *escapedExperienceStableLegacyId;

@end

@implementation ABI42_0_0EXScopedAmplitude

- (instancetype)initWithExperienceStableLegacyId:(NSString *)experienceStableLegacyId
{
  if (self = [super init]) {
    _escapedExperienceStableLegacyId = [self escapedExperienceStableLegacyId:experienceStableLegacyId];
  }
  return self;
}

- (Amplitude *)amplitudeInstance
{
  return [Amplitude instanceWithName:_escapedExperienceStableLegacyId];
}

- (NSString *)escapedExperienceStableLegacyId:(NSString *)experienceStableLegacyId
{
  NSString *charactersToEscape = @"!*'();:@&=+$,/?%#[]";
  NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
  return [experienceStableLegacyId stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
}

@end
#endif
