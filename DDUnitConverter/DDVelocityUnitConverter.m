//
//  DDVelocityUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDVelocityUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDVelocityUnitConverter)

+ (instancetype)newVelocityUnitConverter {
	return [[DDVelocityUnitConverter alloc] init];
}

@end


@implementation DDVelocityUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Speed/Velocity", @"Title for Velocity unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Centimeter Per Hour" symbol:@"cm/h" unit:DDVelocityUnitCentimetersPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Centimeter Per Minute" symbol:@"cm/m" unit:DDVelocityUnitCentimetersPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Centimeter Per Second" symbol:@"cm/s" unit:DDVelocityUnitCentimetersPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Foot Per Hour" symbol:@"ft/h" unit:DDVelocityUnitFeetPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Foot Per Minute" symbol:@"ft/m" unit:DDVelocityUnitFeetPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Foot Per Second" symbol:@"ft/s" unit:DDVelocityUnitFeetPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Inch Per Hour" symbol:@"in/h" unit:DDVelocityUnitInchesPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Inch Per Minute" symbol:@"in/m" unit:DDVelocityUnitInchesPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Inch Per Second" symbol:@"in/s" unit:DDVelocityUnitInchesPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Kilometer Per Hour" symbol:@"km/h" unit:DDVelocityUnitKilometersPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Kilometer Per Minute" symbol:@"km/m" unit:DDVelocityUnitKilometersPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Kilometer Per Second" symbol:@"km/s" unit:DDVelocityUnitKilometersPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Knot" symbol:@"" unit:DDVelocityUnitKnots],
           [DDUnitDetails newUnitWithDisplayName:@"Light" symbol:@"" unit:DDVelocityUnitLight],
           [DDUnitDetails newUnitWithDisplayName:@"Mach" symbol:@"" unit:DDVelocityUnitMach],
           [DDUnitDetails newUnitWithDisplayName:@"Meter Per Hour" symbol:@"m/s" unit:DDVelocityUnitMetersPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Meter Per Minute" symbol:@"m/m" unit:DDVelocityUnitMetersPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Meter Per Second" symbol:@"m/s" unit:DDVelocityUnitMetersPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Mile Per Hour" symbol:@"mi/h" unit:DDVelocityUnitMilesPerHour],
           [DDUnitDetails newUnitWithDisplayName:@"Mile Per Minute" symbol:@"mi/m" unit:DDVelocityUnitMilesPerMinute],
           [DDUnitDetails newUnitWithDisplayName:@"Mile Per Second" symbol:@"mi/s" unit:DDVelocityUnitMilesPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Furlong Per Fortnight" symbol:@"" unit:DDVelocityUnitFurlongsPerFortnight]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDVelocityUnitCentimetersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitCentimetersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:166666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitCentimetersPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDVelocityUnitFeetPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:84666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitFeetPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:508 exponent:-5 isNegative:NO]; break;
		case DDVelocityUnitFeetPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3048 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitInchesPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7055555556 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitInchesPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:423333333333 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitInchesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:254 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:277777777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDVelocityUnitKnots:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:514444444444444 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitLight:
			multiplier = [NSDecimalNumber cConstant_dd]; break;
		case DDVelocityUnitMach:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:34028 exponent:-2 isNegative:NO]; break;
		case DDVelocityUnitMetersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:277777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitMetersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitMetersPerSecond:
			break;
		case DDVelocityUnitMilesPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:44704 exponent:-5 isNegative:NO]; break;
		case DDVelocityUnitMilesPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:268224 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitMilesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1609344 exponent:-3 isNegative:NO]; break;
		case DDVelocityUnitFurlongsPerFortnight:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1663 exponent:-7 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
