//
//  DDPressureUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDPressureUnitConverter.h"

@implementation DDUnitConverter (DDPressureUnitConverter)

+ (instancetype)newPressureUnitConverter {
	return [[DDPressureUnitConverter alloc] init];
}

@end


@implementation DDPressureUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Pressure", @"Title for Pressure unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Atmosphere" symbol:@"atm" unit:DDPressureUnitAtmospheres],
           [DDUnitDetails newUnitWithDisplayName:@"Barie" symbol:@"barye" unit:DDPressureUnitBarie],
           [DDUnitDetails newUnitWithDisplayName:@"Bar" symbol:@"bar" unit:DDPressureUnitBars],
           [DDUnitDetails newUnitWithDisplayName:@"Inch of Mercury" symbol:@"inHg" unit:DDPressureUnitInchesOfMercury],
           [DDUnitDetails newUnitWithDisplayName:@"Inch of Water" symbol:@"H₂O" unit:DDPressureUnitInchesOfWater],
           [DDUnitDetails newUnitWithDisplayName:@"Millimeter of Mercury" symbol:@"mmHg" unit:DDPressureUnitMillimetersOfMercury],
           [DDUnitDetails newUnitWithDisplayName:@"Torr" symbol:@"" unit:DDPressureUnitTorrs],
           [DDUnitDetails newUnitWithDisplayName:@"Newton Per Square Meter" symbol:@"M/m²" unit:DDPressureUnitNewtonsPerSquareMeter],
           [DDUnitDetails newUnitWithDisplayName:@"Pascal" symbol:@"Pa" unit:DDPressureUnitPascals],
           [DDUnitDetails newUnitWithDisplayName:@"Pieze" symbol:@"" unit:DDPressureUnitPieze],
           [DDUnitDetails newUnitWithDisplayName:@"Pound Force Per Square Foot" symbol:@"lbf/ft²" unit:DDPressureUnitPoundForcesPerSquareFoot],
           [DDUnitDetails newUnitWithDisplayName:@"Pound Force Per Square Inch" symbol:@"psi" unit:DDPressureUnitPoundForcesPerSquareInch]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDPressureUnitAtmospheres:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:101325 exponent:0 isNegative:NO]; break;
    case DDPressureUnitBarie:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-1 isNegative:NO]; break;
		case DDPressureUnitBars:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:5 isNegative:NO]; break;
		case DDPressureUnitInchesOfMercury:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:338639 exponent:-2 isNegative:NO]; break;
		case DDPressureUnitInchesOfWater:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:249089 exponent:-3 isNegative:NO]; break;
		case DDPressureUnitMillimetersOfMercury:
		case DDPressureUnitTorrs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:133322368421052632 exponent:-15 isNegative:NO]; break;
		case DDPressureUnitNewtonsPerSquareMeter:
		case DDPressureUnitPascals:
			break;
    case DDPressureUnitPieze:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDPressureUnitPoundForcesPerSquareFoot:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:478803 exponent:-4 isNegative:NO]; break;
		case DDPressureUnitPoundForcesPerSquareInch:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:689476 exponent:-2 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
